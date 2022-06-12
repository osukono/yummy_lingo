import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yummy_lingo/application/player/puzzle/chunks.dart';
import 'package:yummy_lingo/extensions.dart';

part 'puzzle_event.dart';
part 'puzzle_state.dart';
part 'puzzle_bloc.freezed.dart';

class PuzzleBloc extends Bloc<PuzzleEvent, PuzzleState> {
  late int count;
  late int index;
  late String text;
  late List<Chunk> chunks;

  PuzzleBloc() : super(const PuzzleState.initial()) {
    on<_PuzzleLoadEvent>(_onLoad);
    on<_PuzzleChunkPressedEvent>(_onChunkPressed);
  }

  Future<void> _onLoad(
    _PuzzleLoadEvent event,
    Emitter<PuzzleState> emit,
  ) async {
    text = '';
    chunks = event.chunks;
    index = chunks.where((chunk) => chunk.selected).toList().length;
    count = chunks.where((chunk) => !chunk.isExtra).toList().length;

    final List<Chunk> ordered = List<Chunk>.from(chunks)
      ..sort((a, b) => a.index.compareTo(b.index));
    for (int i = 0; i < index; i++) {
      text += ordered[i].value;
    }

    emit(PuzzleState(
      text: text,
      chunks: chunks,
      solved: false,
      errorOption: none(),
    ));
  }

  Future<void> _onChunkPressed(
    _PuzzleChunkPressedEvent event,
    Emitter<PuzzleState> emit,
  ) async {
    Chunk selectedChunk = event.chunk;

    if (selectedChunk.index != index) {
      final Chunk nextChunk =
          chunks.firstWhere((element) => element.index == index);

      if (selectedChunk.label == nextChunk.label) {
        chunks.swap(chunks.indexOf(nextChunk), chunks.indexOf(selectedChunk));
        selectedChunk = nextChunk;
      } else {
        emit((state as PuzzleDataState).copyWith(
          errorOption: some(event.chunk),
        ));
        return;
      }
    }

    text += selectedChunk.value;
    selectedChunk.selected = true;
    index++;

    emit((state as PuzzleDataState).copyWith(
      text: text,
      chunks: chunks,
      solved: index == count,
      errorOption: none(),
    ));
  }
}
