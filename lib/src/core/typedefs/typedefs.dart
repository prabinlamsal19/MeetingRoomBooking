/*
 * Copyright (c) 2022.
 * Author: Kishor Mainali
 * Company: EB Pearls
 */

import 'package:dartz/dartz.dart';

import '../errors/app_error.dart';

typedef EitherResponse<T> = Future<Either<AppError, T>>;
