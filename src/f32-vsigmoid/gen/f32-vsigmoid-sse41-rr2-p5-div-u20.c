// Auto-generated file. Do not edit!
//   Template: src/f32-vsigmoid/sse-rr2-p5-div.c.in
//   Generator: tools/xngen
//
// Copyright 2019 Google LLC
//
// This source code is licensed under the BSD-style license found in the
// LICENSE file in the root directory of this source tree.

#include <assert.h>

#include <smmintrin.h>

#include <xnnpack/common.h>
#include <xnnpack/vunary.h>


void xnn_f32_vsigmoid_ukernel__sse41_rr2_p5_div_u20(
    size_t batch,
    const float* input,
    float* output,
    const union xnn_f32_sigmoid_params params[restrict XNN_MIN_ELEMENTS(1)]) XNN_OOB_READS
{
  assert(batch != 0);
  assert(batch % sizeof(float) == 0);
  assert(input != NULL);
  assert(output != NULL);

  const __m128 vsign_mask = _mm_load_ps(params->sse2_rr2_p5.sign_mask);
  const __m128 vmagic_bias = _mm_load_ps(params->sse2_rr2_p5.magic_bias);
  const __m128 vlog2e = _mm_load_ps(params->sse2_rr2_p5.log2e);
  const __m128 vminus_ln2_hi = _mm_load_ps(params->sse2_rr2_p5.minus_ln2_hi);
  const __m128 vminus_ln2_lo = _mm_load_ps(params->sse2_rr2_p5.minus_ln2_lo);
  const __m128 vc5 = _mm_load_ps(params->sse2_rr2_p5.c5);
  const __m128 vc4 = _mm_load_ps(params->sse2_rr2_p5.c4);
  const __m128 vc3 = _mm_load_ps(params->sse2_rr2_p5.c3);
  const __m128 vc2 = _mm_load_ps(params->sse2_rr2_p5.c2);
  const __m128 vc1 = _mm_load_ps(params->sse2_rr2_p5.c1);
  const __m128 vone = _mm_load_ps(params->sse2_rr2_p5.one);
  const __m128 vdenorm_cutoff = _mm_load_ps(params->sse2_rr2_p5.denorm_cutoff);

  for (; batch >= 20 * sizeof(float); batch -= 20 * sizeof(float)) {
    const __m128 vx0123 = _mm_loadu_ps(input);
    const __m128 vx4567 = _mm_loadu_ps(input + 4);
    const __m128 vx89AB = _mm_loadu_ps(input + 8);
    const __m128 vxCDEF = _mm_loadu_ps(input + 12);
    const __m128 vxGHIJ = _mm_loadu_ps(input + 16);

    const __m128 vz0123 = _mm_or_ps(vx0123, vsign_mask);
    const __m128 vz4567 = _mm_or_ps(vx4567, vsign_mask);
    const __m128 vz89AB = _mm_or_ps(vx89AB, vsign_mask);
    const __m128 vzCDEF = _mm_or_ps(vxCDEF, vsign_mask);
    const __m128 vzGHIJ = _mm_or_ps(vxGHIJ, vsign_mask);

    __m128 vn0123 = _mm_add_ps(_mm_mul_ps(vz0123, vlog2e), vmagic_bias);
    __m128 vn4567 = _mm_add_ps(_mm_mul_ps(vz4567, vlog2e), vmagic_bias);
    __m128 vn89AB = _mm_add_ps(_mm_mul_ps(vz89AB, vlog2e), vmagic_bias);
    __m128 vnCDEF = _mm_add_ps(_mm_mul_ps(vzCDEF, vlog2e), vmagic_bias);
    __m128 vnGHIJ = _mm_add_ps(_mm_mul_ps(vzGHIJ, vlog2e), vmagic_bias);

    const __m128 vs0123 = _mm_castsi128_ps(_mm_slli_epi32(_mm_castps_si128(vn0123), 23));
    const __m128 vs4567 = _mm_castsi128_ps(_mm_slli_epi32(_mm_castps_si128(vn4567), 23));
    const __m128 vs89AB = _mm_castsi128_ps(_mm_slli_epi32(_mm_castps_si128(vn89AB), 23));
    const __m128 vsCDEF = _mm_castsi128_ps(_mm_slli_epi32(_mm_castps_si128(vnCDEF), 23));
    const __m128 vsGHIJ = _mm_castsi128_ps(_mm_slli_epi32(_mm_castps_si128(vnGHIJ), 23));

    vn0123 = _mm_sub_ps(vn0123, vmagic_bias);
    vn4567 = _mm_sub_ps(vn4567, vmagic_bias);
    vn89AB = _mm_sub_ps(vn89AB, vmagic_bias);
    vnCDEF = _mm_sub_ps(vnCDEF, vmagic_bias);
    vnGHIJ = _mm_sub_ps(vnGHIJ, vmagic_bias);

    __m128 vt0123 = _mm_add_ps(_mm_mul_ps(vn0123, vminus_ln2_hi), vz0123);
    __m128 vt4567 = _mm_add_ps(_mm_mul_ps(vn4567, vminus_ln2_hi), vz4567);
    __m128 vt89AB = _mm_add_ps(_mm_mul_ps(vn89AB, vminus_ln2_hi), vz89AB);
    __m128 vtCDEF = _mm_add_ps(_mm_mul_ps(vnCDEF, vminus_ln2_hi), vzCDEF);
    __m128 vtGHIJ = _mm_add_ps(_mm_mul_ps(vnGHIJ, vminus_ln2_hi), vzGHIJ);

    vt0123 = _mm_add_ps(_mm_mul_ps(vn0123, vminus_ln2_lo), vt0123);
    vt4567 = _mm_add_ps(_mm_mul_ps(vn4567, vminus_ln2_lo), vt4567);
    vt89AB = _mm_add_ps(_mm_mul_ps(vn89AB, vminus_ln2_lo), vt89AB);
    vtCDEF = _mm_add_ps(_mm_mul_ps(vnCDEF, vminus_ln2_lo), vtCDEF);
    vtGHIJ = _mm_add_ps(_mm_mul_ps(vnGHIJ, vminus_ln2_lo), vtGHIJ);

    __m128 vp0123 = _mm_add_ps(_mm_mul_ps(vc5, vt0123), vc4);
    __m128 vp4567 = _mm_add_ps(_mm_mul_ps(vc5, vt4567), vc4);
    __m128 vp89AB = _mm_add_ps(_mm_mul_ps(vc5, vt89AB), vc4);
    __m128 vpCDEF = _mm_add_ps(_mm_mul_ps(vc5, vtCDEF), vc4);
    __m128 vpGHIJ = _mm_add_ps(_mm_mul_ps(vc5, vtGHIJ), vc4);

    vp0123 = _mm_add_ps(_mm_mul_ps(vp0123, vt0123), vc3);
    vp4567 = _mm_add_ps(_mm_mul_ps(vp4567, vt4567), vc3);
    vp89AB = _mm_add_ps(_mm_mul_ps(vp89AB, vt89AB), vc3);
    vpCDEF = _mm_add_ps(_mm_mul_ps(vpCDEF, vtCDEF), vc3);
    vpGHIJ = _mm_add_ps(_mm_mul_ps(vpGHIJ, vtGHIJ), vc3);

    vp0123 = _mm_add_ps(_mm_mul_ps(vp0123, vt0123), vc2);
    vp4567 = _mm_add_ps(_mm_mul_ps(vp4567, vt4567), vc2);
    vp89AB = _mm_add_ps(_mm_mul_ps(vp89AB, vt89AB), vc2);
    vpCDEF = _mm_add_ps(_mm_mul_ps(vpCDEF, vtCDEF), vc2);
    vpGHIJ = _mm_add_ps(_mm_mul_ps(vpGHIJ, vtGHIJ), vc2);

    vp0123 = _mm_add_ps(_mm_mul_ps(vp0123, vt0123), vc1);
    vp4567 = _mm_add_ps(_mm_mul_ps(vp4567, vt4567), vc1);
    vp89AB = _mm_add_ps(_mm_mul_ps(vp89AB, vt89AB), vc1);
    vpCDEF = _mm_add_ps(_mm_mul_ps(vpCDEF, vtCDEF), vc1);
    vpGHIJ = _mm_add_ps(_mm_mul_ps(vpGHIJ, vtGHIJ), vc1);

    vt0123 = _mm_mul_ps(vt0123, vs0123);
    vt4567 = _mm_mul_ps(vt4567, vs4567);
    vt89AB = _mm_mul_ps(vt89AB, vs89AB);
    vtCDEF = _mm_mul_ps(vtCDEF, vsCDEF);
    vtGHIJ = _mm_mul_ps(vtGHIJ, vsGHIJ);

    __m128 ve0123 = _mm_add_ps(_mm_mul_ps(vt0123, vp0123), vs0123);
    __m128 ve4567 = _mm_add_ps(_mm_mul_ps(vt4567, vp4567), vs4567);
    __m128 ve89AB = _mm_add_ps(_mm_mul_ps(vt89AB, vp89AB), vs89AB);
    __m128 veCDEF = _mm_add_ps(_mm_mul_ps(vtCDEF, vpCDEF), vsCDEF);
    __m128 veGHIJ = _mm_add_ps(_mm_mul_ps(vtGHIJ, vpGHIJ), vsGHIJ);

    __m128 vd0123 = _mm_add_ps(ve0123, vone);
    __m128 vd4567 = _mm_add_ps(ve4567, vone);
    __m128 vd89AB = _mm_add_ps(ve89AB, vone);
    __m128 vdCDEF = _mm_add_ps(veCDEF, vone);
    __m128 vdGHIJ = _mm_add_ps(veGHIJ, vone);

    __m128 vf0123 = _mm_div_ps(ve0123, vd0123);
    __m128 vf4567 = _mm_div_ps(ve4567, vd4567);
    __m128 vf89AB = _mm_div_ps(ve89AB, vd89AB);
    __m128 vfCDEF = _mm_div_ps(veCDEF, vdCDEF);
    __m128 vfGHIJ = _mm_div_ps(veGHIJ, vdGHIJ);

    vf0123 = _mm_andnot_ps(_mm_cmplt_ps(vz0123, vdenorm_cutoff), vf0123);
    vf4567 = _mm_andnot_ps(_mm_cmplt_ps(vz4567, vdenorm_cutoff), vf4567);
    vf89AB = _mm_andnot_ps(_mm_cmplt_ps(vz89AB, vdenorm_cutoff), vf89AB);
    vfCDEF = _mm_andnot_ps(_mm_cmplt_ps(vzCDEF, vdenorm_cutoff), vfCDEF);
    vfGHIJ = _mm_andnot_ps(_mm_cmplt_ps(vzGHIJ, vdenorm_cutoff), vfGHIJ);

    vf0123 = _mm_blendv_ps(_mm_sub_ps(vone, vf0123), vf0123, vx0123);
    vf4567 = _mm_blendv_ps(_mm_sub_ps(vone, vf4567), vf4567, vx4567);
    vf89AB = _mm_blendv_ps(_mm_sub_ps(vone, vf89AB), vf89AB, vx89AB);
    vfCDEF = _mm_blendv_ps(_mm_sub_ps(vone, vfCDEF), vfCDEF, vxCDEF);
    vfGHIJ = _mm_blendv_ps(_mm_sub_ps(vone, vfGHIJ), vfGHIJ, vxGHIJ);

    _mm_storeu_ps(output, vf0123);
    _mm_storeu_ps(output + 4, vf4567);
    _mm_storeu_ps(output + 8, vf89AB);
    _mm_storeu_ps(output + 12, vfCDEF);
    _mm_storeu_ps(output + 16, vfGHIJ);

    input += 20;
    output += 20;
  }
  for (; batch >= 4 * sizeof(float); batch -= 4 * sizeof(float)) {
    const __m128 vx = _mm_loadu_ps(input);

    const __m128 vz = _mm_or_ps(vx, vsign_mask);

    __m128 vn = _mm_add_ps(_mm_mul_ps(vz, vlog2e), vmagic_bias);
    const __m128 vs = _mm_castsi128_ps(_mm_slli_epi32(_mm_castps_si128(vn), 23));
    vn = _mm_sub_ps(vn, vmagic_bias);

    __m128 vt = _mm_add_ps(_mm_mul_ps(vn, vminus_ln2_hi), vz);
    vt = _mm_add_ps(_mm_mul_ps(vn, vminus_ln2_lo), vt);

    __m128 vp = _mm_add_ps(_mm_mul_ps(vc5, vt), vc4);
    vp = _mm_add_ps(_mm_mul_ps(vp, vt), vc3);
    vp = _mm_add_ps(_mm_mul_ps(vp, vt), vc2);
    vp = _mm_add_ps(_mm_mul_ps(vp, vt), vc1);

    vt = _mm_mul_ps(vt, vs);
    __m128 ve = _mm_add_ps(_mm_mul_ps(vt, vp), vs);

    __m128 vd = _mm_add_ps(ve, vone);
    __m128 vf = _mm_div_ps(ve, vd);

    vf = _mm_andnot_ps(_mm_cmplt_ps(vz, vdenorm_cutoff), vf);
    vf = _mm_blendv_ps(_mm_sub_ps(vone, vf), vf, vx);

    _mm_storeu_ps(output, vf);

    input += 4;
    output += 4;
  }
  if XNN_UNLIKELY(batch != 0) {
    const __m128 vx = _mm_loadu_ps(input);

    const __m128 vz = _mm_or_ps(vx, vsign_mask);

    __m128 vn = _mm_add_ps(_mm_mul_ps(vz, vlog2e), vmagic_bias);
    const __m128 vs = _mm_castsi128_ps(_mm_slli_epi32(_mm_castps_si128(vn), 23));
    vn = _mm_sub_ps(vn, vmagic_bias);

    __m128 vt = _mm_add_ps(_mm_mul_ps(vn, vminus_ln2_hi), vz);
    vt = _mm_add_ps(_mm_mul_ps(vn, vminus_ln2_lo), vt);

    __m128 vp = _mm_add_ps(_mm_mul_ps(vc5, vt), vc4);
    vp = _mm_add_ps(_mm_mul_ps(vp, vt), vc3);
    vp = _mm_add_ps(_mm_mul_ps(vp, vt), vc2);
    vp = _mm_add_ps(_mm_mul_ps(vp, vt), vc1);

    vt = _mm_mul_ps(vt, vs);
    __m128 ve = _mm_add_ps(_mm_mul_ps(vt, vp), vs);

    __m128 vd = _mm_add_ps(ve, vone);
    __m128 vf = _mm_div_ps(ve, vd);

    vf = _mm_andnot_ps(_mm_cmplt_ps(vz, vdenorm_cutoff), vf);
    vf = _mm_blendv_ps(_mm_sub_ps(vone, vf), vf, vx);

    if (batch & (2 * sizeof(float))) {
      _mm_storel_pi((__m64*) output, vf);
      vf = _mm_movehl_ps(vf, vf);
      output += 2;
    }
    if (batch & (1 * sizeof(float))) {
      _mm_store_ss(output, vf);
    }
  }
}