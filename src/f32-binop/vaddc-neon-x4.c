// Auto-generated file. Do not edit!
//   Template: src/f32-binop/vopc-neon.c.in
//   Generator: tools/xngen
//
// Copyright 2019 Google LLC
//
// This source code is licensed under the BSD-style license found in the
// LICENSE file in the root directory of this source tree.

#include <assert.h>

#include <arm_neon.h>

#include <xnnpack/common.h>
#include <xnnpack/vbinop.h>


void xnn_f32_vaddc_ukernel__neon_x4(
    size_t n,
    const float* a,
    const float* b,
    float* y,
    const union xnn_f32_output_params params[restrict static 1])
{
  assert(n != 0);
  assert(n % sizeof(float) == 0);

  const float32x4_t vy_min = vld1q_dup_f32(&params->scalar.min);
  const float32x4_t vy_max = vld1q_dup_f32(&params->scalar.max);

  const float32x4_t vb = vld1q_dup_f32(b);
  for (; n >= 4 * sizeof(float); n -= 4 * sizeof(float)) {
    const float32x4_t va0123 = vld1q_f32(a); a += 4;

    float32x4_t vy0123 = vaddq_f32(va0123, vb);

    vy0123 = vmaxq_f32(vy0123, vy_min);

    vy0123 = vminq_f32(vy0123, vy_max);

    vst1q_f32(y, vy0123); y += 4;
  }
  for (; n >= 4 * sizeof(float); n -= 4 * sizeof(float)) {
    const float32x4_t va0123 = vld1q_f32(a); a += 4;

    float32x4_t vy0123 = vaddq_f32(va0123, vb);
    vy0123 = vmaxq_f32(vy0123, vy_min);
    vy0123 = vminq_f32(vy0123, vy_max);
    vst1q_f32(y, vy0123); y += 4;
  }
  if XNN_UNLIKELY(n != 0) {
    const float32x4_t va0123 = vld1q_f32(a);

    float32x4_t vy0123 = vaddq_f32(va0123, vb);
    vy0123 = vmaxq_f32(vy0123, vy_min);
    vy0123 = vminq_f32(vy0123, vy_max);

    float32x2_t vy01 = vget_low_f32(vy0123);
    if (n & (2 * sizeof(float))) {
      vst1_f32(y, vy01); y += 2;
      vy01 = vget_high_f32(vy0123);
    }
    if (n & (1 * sizeof(float))) {
      vst1_lane_f32(y, vy01, 0);
    }
  }
}
