# Copyright 2022 Google LLC
#
# This source code is licensed under the BSD-style license found in the
# LICENSE file in the root directory of this source tree.
#
# Description: microkernel filename lists for neonfma_aarch64
#
# Auto-generated file. Do not edit!
#   Generator: tools/update-microkernels.py


SET(ALL_NEONFMA_AARCH64_MICROKERNEL_SRCS
  src/f32-conv-hwc2chw/f32-conv-hwc2chw-3x3s2p1c3x4-aarch64-neonfma-2x2.c
  src/f32-conv-hwc/gen/f32-conv-hwc-3x3s2p0p1c3x4-aarch64-neonfma-2x1.c
  src/f32-conv-hwc/gen/f32-conv-hwc-3x3s2p0p1c3x4-aarch64-neonfma-2x2.c
  src/f32-conv-hwc/gen/f32-conv-hwc-3x3s2p0p1c3x8-aarch64-neonfma-2x1.c
  src/f32-conv-hwc/gen/f32-conv-hwc-3x3s2p0p1c3x8-aarch64-neonfma-2x2.c
  src/f32-conv-hwc/gen/f32-conv-hwc-3x3s2p1c3x4-aarch64-neonfma-2x1.c
  src/f32-conv-hwc/gen/f32-conv-hwc-3x3s2p1c3x4-aarch64-neonfma-2x2.c
  src/f32-conv-hwc/gen/f32-conv-hwc-3x3s2p1c3x8-aarch64-neonfma-2x1.c
  src/f32-conv-hwc/gen/f32-conv-hwc-3x3s2p1c3x8-aarch64-neonfma-2x2.c
  src/f32-dwconv2d-chw/gen/f32-dwconv2d-chw-3x3p1-minmax-aarch64-neonfma-1x4-acc2.c
  src/f32-dwconv2d-chw/gen/f32-dwconv2d-chw-3x3p1-minmax-aarch64-neonfma-1x4-acc3.c
  src/f32-dwconv2d-chw/gen/f32-dwconv2d-chw-3x3p1-minmax-aarch64-neonfma-1x4-acc4.c
  src/f32-dwconv2d-chw/gen/f32-dwconv2d-chw-3x3p1-minmax-aarch64-neonfma-1x4.c
  src/f32-dwconv2d-chw/gen/f32-dwconv2d-chw-3x3p1-minmax-aarch64-neonfma-2x4-acc2.c
  src/f32-dwconv2d-chw/gen/f32-dwconv2d-chw-3x3p1-minmax-aarch64-neonfma-2x4.c
  src/f32-dwconv2d-chw/gen/f32-dwconv2d-chw-3x3p1-minmax-aarch64-neonfma-3x4.c
  src/f32-dwconv2d-chw/gen/f32-dwconv2d-chw-3x3p1-minmax-aarch64-neonfma-4x4.c
  src/f32-dwconv2d-chw/gen/f32-dwconv2d-chw-3x3p1-minmax-aarch64-neonfma-5x4.c
  src/f32-dwconv2d-chw/gen/f32-dwconv2d-chw-3x3p1-minmax-aarch64-neonfma-6x4.c
  src/f32-dwconv2d-chw/gen/f32-dwconv2d-chw-3x3s2p1-minmax-aarch64-neonfma-1x4-acc2.c
  src/f32-dwconv2d-chw/gen/f32-dwconv2d-chw-3x3s2p1-minmax-aarch64-neonfma-1x4-acc3.c
  src/f32-dwconv2d-chw/gen/f32-dwconv2d-chw-3x3s2p1-minmax-aarch64-neonfma-1x4-acc4.c
  src/f32-dwconv2d-chw/gen/f32-dwconv2d-chw-3x3s2p1-minmax-aarch64-neonfma-1x4.c
  src/f32-dwconv2d-chw/gen/f32-dwconv2d-chw-3x3s2p1-minmax-aarch64-neonfma-2x4-acc2.c
  src/f32-dwconv2d-chw/gen/f32-dwconv2d-chw-3x3s2p1-minmax-aarch64-neonfma-2x4.c
  src/f32-dwconv2d-chw/gen/f32-dwconv2d-chw-3x3s2p1-minmax-aarch64-neonfma-3x4.c
  src/f32-dwconv2d-chw/gen/f32-dwconv2d-chw-3x3s2p1-minmax-aarch64-neonfma-4x4.c
  src/f32-dwconv2d-chw/gen/f32-dwconv2d-chw-5x5p2-minmax-aarch64-neonfma-1x4-acc2.c
  src/f32-dwconv2d-chw/gen/f32-dwconv2d-chw-5x5p2-minmax-aarch64-neonfma-1x4-acc3.c
  src/f32-dwconv2d-chw/gen/f32-dwconv2d-chw-5x5p2-minmax-aarch64-neonfma-1x4-acc4.c
  src/f32-dwconv2d-chw/gen/f32-dwconv2d-chw-5x5p2-minmax-aarch64-neonfma-1x4-acc5.c
  src/f32-dwconv2d-chw/gen/f32-dwconv2d-chw-5x5p2-minmax-aarch64-neonfma-1x4.c
  src/f32-dwconv2d-chw/gen/f32-dwconv2d-chw-5x5p2-minmax-aarch64-neonfma-2x4-acc2.c
  src/f32-dwconv2d-chw/gen/f32-dwconv2d-chw-5x5p2-minmax-aarch64-neonfma-2x4-acc3.c
  src/f32-dwconv2d-chw/gen/f32-dwconv2d-chw-5x5p2-minmax-aarch64-neonfma-2x4.c
  src/f32-dwconv2d-chw/gen/f32-dwconv2d-chw-5x5p2-minmax-aarch64-neonfma-3x4-acc2.c
  src/f32-dwconv2d-chw/gen/f32-dwconv2d-chw-5x5p2-minmax-aarch64-neonfma-3x4.c
  src/f32-dwconv2d-chw/gen/f32-dwconv2d-chw-5x5p2-minmax-aarch64-neonfma-4x4-acc2.c
  src/f32-dwconv2d-chw/gen/f32-dwconv2d-chw-5x5p2-minmax-aarch64-neonfma-4x4.c
  src/f32-dwconv2d-chw/gen/f32-dwconv2d-chw-5x5p2-minmax-aarch64-neonfma-5x4.c
  src/f32-dwconv2d-chw/gen/f32-dwconv2d-chw-5x5s2p2-minmax-aarch64-neonfma-1x4-acc2.c
  src/f32-dwconv2d-chw/gen/f32-dwconv2d-chw-5x5s2p2-minmax-aarch64-neonfma-1x4-acc3.c
  src/f32-dwconv2d-chw/gen/f32-dwconv2d-chw-5x5s2p2-minmax-aarch64-neonfma-1x4-acc4.c
  src/f32-dwconv2d-chw/gen/f32-dwconv2d-chw-5x5s2p2-minmax-aarch64-neonfma-1x4-acc5.c
  src/f32-dwconv2d-chw/gen/f32-dwconv2d-chw-5x5s2p2-minmax-aarch64-neonfma-1x4.c
  src/f32-dwconv2d-chw/gen/f32-dwconv2d-chw-5x5s2p2-minmax-aarch64-neonfma-2x4-acc2.c
  src/f32-dwconv2d-chw/gen/f32-dwconv2d-chw-5x5s2p2-minmax-aarch64-neonfma-2x4-acc3.c
  src/f32-dwconv2d-chw/gen/f32-dwconv2d-chw-5x5s2p2-minmax-aarch64-neonfma-2x4.c
  src/f32-dwconv2d-chw/gen/f32-dwconv2d-chw-5x5s2p2-minmax-aarch64-neonfma-3x4-acc2.c
  src/f32-dwconv2d-chw/gen/f32-dwconv2d-chw-5x5s2p2-minmax-aarch64-neonfma-3x4.c
  src/f32-gemm/gen/f32-gemm-1x8-minmax-aarch64-neonfma-lane-ld64.c
  src/f32-gemm/gen/f32-gemm-1x8-minmax-aarch64-neonfma-lane-ld128.c
  src/f32-gemm/gen/f32-gemm-1x16-minmax-aarch64-neonfma-lane-ld128.c
  src/f32-gemm/gen/f32-gemm-2x16-minmax-aarch64-neonfma-lane-ld128.c
  src/f32-gemm/gen/f32-gemm-3x16-minmax-aarch64-neonfma-lane-ld128.c
  src/f32-gemm/gen/f32-gemm-4x2-minmax-aarch64-neonfma-lane-ld64.c
  src/f32-gemm/gen/f32-gemm-4x8-minmax-aarch64-neonfma-lane-ld64.c
  src/f32-gemm/gen/f32-gemm-4x8-minmax-aarch64-neonfma-lane-ld128.c
  src/f32-gemm/gen/f32-gemm-4x16-minmax-aarch64-neonfma-lane-ld128.c
  src/f32-gemm/gen/f32-gemm-5x8-minmax-aarch64-neonfma-lane-ld64.c
  src/f32-gemm/gen/f32-gemm-5x16-minmax-aarch64-neonfma-lane-ld128.c
  src/f32-gemm/gen/f32-gemm-6x2-minmax-aarch64-neonfma-lane-ld64.c
  src/f32-gemm/gen/f32-gemm-6x8-minmax-aarch64-neonfma-lane-ld64.c
  src/f32-gemm/gen/f32-gemm-6x8-minmax-aarch64-neonfma-lane-ld128.c
  src/f32-gemm/gen/f32-gemm-6x16-minmax-aarch64-neonfma-lane-ld128.c
  src/f32-gemminc/gen/f32-gemminc-1x8-minmax-aarch64-neonfma-lane-ld64.c
  src/f32-gemminc/gen/f32-gemminc-1x8-minmax-aarch64-neonfma-lane-ld128.c
  src/f32-gemminc/gen/f32-gemminc-4x8-minmax-aarch64-neonfma-lane-ld64.c
  src/f32-gemminc/gen/f32-gemminc-4x8-minmax-aarch64-neonfma-lane-ld128.c
  src/f32-gemminc/gen/f32-gemminc-5x8-minmax-aarch64-neonfma-lane-ld64.c
  src/f32-gemminc/gen/f32-gemminc-6x8-minmax-aarch64-neonfma-lane-ld64.c
  src/f32-gemminc/gen/f32-gemminc-6x8-minmax-aarch64-neonfma-lane-ld128.c
  src/f32-igemm/gen/f32-igemm-1x8-minmax-aarch64-neonfma-lane-ld64.c
  src/f32-igemm/gen/f32-igemm-1x8-minmax-aarch64-neonfma-lane-ld128.c
  src/f32-igemm/gen/f32-igemm-1x16-minmax-aarch64-neonfma-lane-ld128.c
  src/f32-igemm/gen/f32-igemm-2x16-minmax-aarch64-neonfma-lane-ld128.c
  src/f32-igemm/gen/f32-igemm-3x16-minmax-aarch64-neonfma-lane-ld128.c
  src/f32-igemm/gen/f32-igemm-4x2-minmax-aarch64-neonfma-lane-ld64.c
  src/f32-igemm/gen/f32-igemm-4x4-minmax-aarch64-neonfma-lane-ld64.c
  src/f32-igemm/gen/f32-igemm-4x8-minmax-aarch64-neonfma-lane-ld64.c
  src/f32-igemm/gen/f32-igemm-4x8-minmax-aarch64-neonfma-lane-ld128.c
  src/f32-igemm/gen/f32-igemm-4x16-minmax-aarch64-neonfma-lane-ld128.c
  src/f32-igemm/gen/f32-igemm-5x16-minmax-aarch64-neonfma-lane-ld128.c
  src/f32-igemm/gen/f32-igemm-6x2-minmax-aarch64-neonfma-lane-ld64.c
  src/f32-igemm/gen/f32-igemm-6x8-minmax-aarch64-neonfma-lane-ld64.c
  src/f32-igemm/gen/f32-igemm-6x8-minmax-aarch64-neonfma-lane-ld128.c
  src/f32-igemm/gen/f32-igemm-6x16-minmax-aarch64-neonfma-lane-ld128.c
  src/f32-ppmm/gen/f32-ppmm-4x8-minmax-aarch64-neonfma-prfm.c
  src/f32-ppmm/gen/f32-ppmm-4x8-minmax-aarch64-neonfma.c
  src/f32-ppmm/gen/f32-ppmm-4x16-minmax-aarch64-neonfma-prfm.c
  src/f32-ppmm/gen/f32-ppmm-4x16-minmax-aarch64-neonfma.c
  src/f32-ppmm/gen/f32-ppmm-8x8-minmax-aarch64-neonfma-prfm.c
  src/f32-ppmm/gen/f32-ppmm-8x8-minmax-aarch64-neonfma.c
  src/f32-qc4w-gemm/gen/f32-qc4w-gemm-1x8-minmax-aarch64-neonfma-lane-ld64.c
  src/f32-qc4w-gemm/gen/f32-qc4w-gemm-1x8-minmax-aarch64-neonfma-lane-ld128.c
  src/f32-qc4w-gemm/gen/f32-qc4w-gemm-4x8-minmax-aarch64-neonfma-lane-ld64.c
  src/f32-qc4w-gemm/gen/f32-qc4w-gemm-4x8-minmax-aarch64-neonfma-lane-ld128.c
  src/f32-qc4w-gemm/gen/f32-qc4w-gemm-5x8-minmax-aarch64-neonfma-lane-ld64.c
  src/f32-qc4w-gemm/gen/f32-qc4w-gemm-6x8-minmax-aarch64-neonfma-lane-ld64.c
  src/f32-qc4w-gemm/gen/f32-qc4w-gemm-6x8-minmax-aarch64-neonfma-lane-ld128.c
  src/f32-qc8w-gemm/gen/f32-qc8w-gemm-1x8-minmax-aarch64-neonfma-lane-ld64.c
  src/f32-qc8w-gemm/gen/f32-qc8w-gemm-1x8-minmax-aarch64-neonfma-lane-ld128.c
  src/f32-qc8w-gemm/gen/f32-qc8w-gemm-1x16-minmax-aarch64-neonfma-lane-ld128.c
  src/f32-qc8w-gemm/gen/f32-qc8w-gemm-4x2-minmax-aarch64-neonfma-lane-ld64.c
  src/f32-qc8w-gemm/gen/f32-qc8w-gemm-4x8-minmax-aarch64-neonfma-lane-ld64.c
  src/f32-qc8w-gemm/gen/f32-qc8w-gemm-4x8-minmax-aarch64-neonfma-lane-ld128.c
  src/f32-qc8w-gemm/gen/f32-qc8w-gemm-4x16-minmax-aarch64-neonfma-lane-ld128.c
  src/f32-qc8w-gemm/gen/f32-qc8w-gemm-5x8-minmax-aarch64-neonfma-lane-ld64.c
  src/f32-qc8w-gemm/gen/f32-qc8w-gemm-6x2-minmax-aarch64-neonfma-lane-ld64.c
  src/f32-qc8w-gemm/gen/f32-qc8w-gemm-6x8-minmax-aarch64-neonfma-lane-ld64.c
  src/f32-qc8w-gemm/gen/f32-qc8w-gemm-6x8-minmax-aarch64-neonfma-lane-ld128.c
  src/f32-spmm/gen/f32-spmm-4x2-minmax-aarch64-neonfma.c
  src/f32-spmm/gen/f32-spmm-4x4-minmax-aarch64-neonfma.c
  src/f32-spmm/gen/f32-spmm-8x2-minmax-aarch64-neonfma.c
  src/f32-spmm/gen/f32-spmm-8x4-minmax-aarch64-neonfma.c
  src/f32-spmm/gen/f32-spmm-12x2-minmax-aarch64-neonfma.c
  src/f32-spmm/gen/f32-spmm-12x4-minmax-aarch64-neonfma.c
  src/f32-spmm/gen/f32-spmm-16x2-minmax-aarch64-neonfma.c
  src/f32-spmm/gen/f32-spmm-16x4-minmax-aarch64-neonfma.c
  src/f32-spmm/gen/f32-spmm-32x2-minmax-aarch64-neonfma.c
  src/f32-spmm/gen/f32-spmm-32x4-minmax-aarch64-neonfma.c
  src/f32-vsigmoid/gen/f32-vsigmoid-aarch64-neonfma-rr1-lut64-p2-div-u4.c
  src/f32-vsigmoid/gen/f32-vsigmoid-aarch64-neonfma-rr1-lut64-p2-div-u8.c
  src/f32-vsigmoid/gen/f32-vsigmoid-aarch64-neonfma-rr1-lut64-p2-div-u12.c
  src/f32-vsigmoid/gen/f32-vsigmoid-aarch64-neonfma-rr1-lut64-p2-div-u16.c
  src/f32-vsigmoid/gen/f32-vsigmoid-aarch64-neonfma-rr1-lut64-p2-div-u20.c
  src/f32-vsigmoid/gen/f32-vsigmoid-aarch64-neonfma-rr1-lut64-p2-div-u24.c
  src/f32-vsigmoid/gen/f32-vsigmoid-aarch64-neonfma-rr1-lut2048-p1-div-u4.c
  src/f32-vsigmoid/gen/f32-vsigmoid-aarch64-neonfma-rr1-lut2048-p1-div-u8.c
  src/f32-vsigmoid/gen/f32-vsigmoid-aarch64-neonfma-rr1-lut2048-p1-div-u12.c
  src/f32-vsigmoid/gen/f32-vsigmoid-aarch64-neonfma-rr1-lut2048-p1-div-u16.c
  src/f32-vsigmoid/gen/f32-vsigmoid-aarch64-neonfma-rr1-lut2048-p1-div-u20.c
  src/f32-vsigmoid/gen/f32-vsigmoid-aarch64-neonfma-rr1-lut2048-p1-div-u24.c
  src/f32-vsigmoid/gen/f32-vsigmoid-aarch64-neonfma-rr1-p5-div-u4.c
  src/f32-vsigmoid/gen/f32-vsigmoid-aarch64-neonfma-rr1-p5-div-u8.c
  src/f32-vsigmoid/gen/f32-vsigmoid-aarch64-neonfma-rr1-p5-div-u12.c
  src/f32-vsigmoid/gen/f32-vsigmoid-aarch64-neonfma-rr1-p5-div-u16.c
  src/f32-vsigmoid/gen/f32-vsigmoid-aarch64-neonfma-rr1-p5-div-u20.c
  src/f32-vsigmoid/gen/f32-vsigmoid-aarch64-neonfma-rr1-p5-div-u24.c
  src/f32-vtanh/gen/f32-vtanh-aarch64-neonfma-expm1minus-rr1-lut8-p4h3ts-div-u4.c
  src/f32-vtanh/gen/f32-vtanh-aarch64-neonfma-expm1minus-rr1-lut8-p4h3ts-div-u8.c
  src/f32-vtanh/gen/f32-vtanh-aarch64-neonfma-expm1minus-rr1-lut8-p4h3ts-div-u12.c
  src/f32-vtanh/gen/f32-vtanh-aarch64-neonfma-expm1minus-rr1-lut8-p4h3ts-div-u16.c
  src/f32-vtanh/gen/f32-vtanh-aarch64-neonfma-expm1minus-rr1-p6h5ts-div-u4.c
  src/f32-vtanh/gen/f32-vtanh-aarch64-neonfma-expm1minus-rr1-p6h5ts-div-u8.c
  src/f32-vtanh/gen/f32-vtanh-aarch64-neonfma-expm1minus-rr1-p6h5ts-div-u12.c
  src/f32-vtanh/gen/f32-vtanh-aarch64-neonfma-expm1minus-rr1-p6h5ts-div-u16.c
  src/math/f32-sigmoid-aarch64-neonfma-rr1-lut64-p2-div.c
  src/math/f32-sigmoid-aarch64-neonfma-rr1-lut2048-p1-div.c
  src/math/f32-sigmoid-aarch64-neonfma-rr1-p5-div.c
  src/math/f32-sigmoid-aarch64-neonfma-rr2-lut64-p2-div.c
  src/math/f32-sigmoid-aarch64-neonfma-rr2-lut2048-p1-div.c
  src/math/f32-sigmoid-aarch64-neonfma-rr2-p5-div.c
  src/math/gen/f32-tanh-aarch64-neonfma-expm1minus-rr1-lut8-p4h3ps-div.c
  src/math/gen/f32-tanh-aarch64-neonfma-expm1minus-rr1-p6h5ts-div.c)
