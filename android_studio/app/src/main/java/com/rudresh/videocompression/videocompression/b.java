package com.rudresh.videocompression.videocompression;

import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.graphics.Point;
import android.graphics.PointF;
import android.opengl.GLES20;
import java.lang.reflect.Array;
import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;
import java.util.ArrayList;
import java.util.Locale;

/* compiled from: FilterShaders.java */
/* loaded from: classes3.dex */
public class b {

    /* renamed from: f1  reason: collision with root package name */
    public static final String f55155f1 = "attribute vec4 position;attribute vec2 inputTexCoord;varying vec2 texCoord;void main() {gl_Position = position;texCoord = inputTexCoord;}";

    /* renamed from: g1  reason: collision with root package name */
    public static final String f55156g1 = "attribute vec4 position;attribute vec2 inputTexCoord;varying vec2 texCoord;varying vec2 texCoord2;void main() {gl_Position = position;texCoord = inputTexCoord;texCoord2 = inputTexCoord;}";

    /* renamed from: h1  reason: collision with root package name */
    public static final String f55157h1 = "varying highp vec2 texCoord;uniform sampler2D sourceImage;void main() {gl_FragColor = texture2D(sourceImage, texCoord);}";

    /* renamed from: i1  reason: collision with root package name */
    private static final String f55158i1 = "precision lowp float;varying highp vec2 texCoord;uniform sampler2D sourceImage;void main() {vec4 color = texture2D(sourceImage, texCoord);float hardLightColor = color.b;for (int i = 0; i < 3; ++i){if (hardLightColor < 0.5) {hardLightColor = hardLightColor * hardLightColor * 2.0;} else {hardLightColor = 1.0 - (1.0 - hardLightColor) * (1.0 - hardLightColor) * 2.0;}}float k = 255.0 / (164.0 - 75.0);hardLightColor = (hardLightColor - 75.0 / 255.0) * k;gl_FragColor = vec4(vec3(hardLightColor), color.a);}";

    /* renamed from: j1  reason: collision with root package name */
    private static final String f55159j1 = "%1$s\nprecision lowp float;varying highp vec2 texCoord;varying highp vec2 texCoord2;uniform %2$s sourceImage;uniform sampler2D toneCurveTexture;uniform sampler2D inputImageTexture3;uniform lowp float mixturePercent;void main() {vec4 image = texture2D(sourceImage, texCoord);vec4 mask = texture2D(inputImageTexture3, texCoord2);float redCurveValue = texture2D(toneCurveTexture, vec2(image.r, 0.0)).r;float greenCurveValue = texture2D(toneCurveTexture, vec2(image.g, 0.0)).g;float blueCurveValue = texture2D(toneCurveTexture, vec2(image.b, 0.0)).b;vec4 result = vec4(redCurveValue, greenCurveValue, blueCurveValue, image.a);vec4 tone = mix(image, result, mixturePercent);gl_FragColor = vec4(mix(image.rgb, tone.rgb, 1.0 - mask.b), 1.0);}";

    /* renamed from: k1  reason: collision with root package name */
    private static final String f55160k1 = "%1$s\nprecision lowp float;varying highp vec2 texCoord;uniform %2$s sourceImage;void main() {vec4 inp = texture2D(sourceImage, texCoord);vec4 image = vec4(inp.rgb * pow(2.0, -1.0), inp.w);vec4 base = vec4(image.g, image.g, image.g, 1.0);vec4 overlay = vec4(image.b, image.b, image.b, 1.0);float ba = 2.0 * overlay.b * base.b + overlay.b * (1.0 - base.a) + base.b * (1.0 - overlay.a);gl_FragColor = vec4(ba,ba,ba,image.a);}";

    /* renamed from: l1  reason: collision with root package name */
    private static final String f55161l1 = "precision lowp float;varying highp vec2 texCoord;varying highp vec2 texCoord2;uniform sampler2D sourceImage;uniform sampler2D inputImageTexture2;void main() {vec4 image = texture2D(sourceImage, texCoord);vec4 blurredImage = texture2D(inputImageTexture2, texCoord2);gl_FragColor = vec4((image.rgb - blurredImage.rgb + vec3(0.5,0.5,0.5)), image.a);}";

    /* renamed from: m1  reason: collision with root package name */
    private static final String f55162m1 = "varying highp vec2 texCoord;uniform sampler2D sourceImage;uniform sampler2D inputImageTexture2;uniform lowp float excludeSize;uniform lowp vec2 excludePoint;uniform lowp float excludeBlurSize;uniform highp float aspectRatio;void main() {lowp vec4 sharpImageColor = texture2D(sourceImage, texCoord);lowp vec4 blurredImageColor = texture2D(inputImageTexture2, texCoord);highp vec2 texCoordToUse = vec2(texCoord.x, (texCoord.y * aspectRatio + 0.5 - 0.5 * aspectRatio));highp float distanceFromCenter = distance(excludePoint, texCoordToUse);gl_FragColor = mix(sharpImageColor, blurredImageColor, smoothstep(excludeSize - excludeBlurSize, excludeSize, distanceFromCenter));}";

    /* renamed from: n1  reason: collision with root package name */
    private static final String f55163n1 = "varying highp vec2 texCoord;uniform sampler2D sourceImage;uniform sampler2D inputImageTexture2;uniform lowp float excludeSize;uniform lowp vec2 excludePoint;uniform lowp float excludeBlurSize;uniform highp float angle;uniform highp float aspectRatio;void main() {lowp vec4 sharpImageColor = texture2D(sourceImage, texCoord);lowp vec4 blurredImageColor = texture2D(inputImageTexture2, texCoord);highp vec2 texCoordToUse = vec2(texCoord.x, (texCoord.y * aspectRatio + 0.5 - 0.5 * aspectRatio));highp float distanceFromCenter = abs((texCoordToUse.x - excludePoint.x) * aspectRatio * cos(angle) + (texCoordToUse.y - excludePoint.y) * sin(angle));gl_FragColor = mix(sharpImageColor, blurredImageColor, smoothstep(excludeSize - excludeBlurSize, excludeSize, distanceFromCenter));}";

    /* renamed from: o1  reason: collision with root package name */
    private static final String f55164o1 = "attribute vec4 position;uniform mat4 videoMatrix;attribute vec4 inputTexCoord;varying vec2 texCoord;void main() {gl_Position = position;texCoord = vec2(videoMatrix * inputTexCoord).xy;}";

    /* renamed from: p1  reason: collision with root package name */
    private static final String f55165p1 = "attribute vec4 position;uniform mat4 videoMatrix;attribute vec4 inputTexCoord;varying vec2 texCoord;varying vec2 texCoord2;void main() {gl_Position = position;texCoord = vec2(videoMatrix * inputTexCoord).xy;texCoord2 = inputTexCoord.xy;}";

    /* renamed from: q1  reason: collision with root package name */
    private static final String f55166q1 = "%1$s\nprecision highp float;varying vec2 texCoord;uniform %2$s sourceImage;vec3 rgb_to_hsv(vec3 c) {vec4 K = vec4(0.0, -1.0 / 3.0, 2.0 / 3.0, -1.0);vec4 p = c.g < c.b ? vec4(c.bg, K.wz) : vec4(c.gb, K.xy);vec4 q = c.r < p.x ? vec4(p.xyw, c.r) : vec4(c.r, p.yzx);float d = q.x - min(q.w, q.y);float e = 1.0e-10;return vec3(abs(q.z + (q.w - q.y) / (6.0 * d + e)), d / (q.x + e), q.x);}void main() {vec4 texel = texture2D(sourceImage, texCoord);gl_FragColor = vec4(rgb_to_hsv(texel.rgb), texel.a);}";

    /* renamed from: r1  reason: collision with root package name */
    private static final String f55167r1 = "precision highp float;varying vec2 texCoord;uniform sampler2D sourceImage;uniform sampler2D inputImageTexture2;uniform float intensity;float enhance(float value) {const vec2 offset = vec2(0.001953125, 0.03125);value = value + offset.x;vec2 coord = (clamp(texCoord, 0.125, 1.0 - 0.125001) - 0.125) * 4.0;vec2 frac = fract(coord);coord = floor(coord);float p00 = float(coord.y * 4.0 + coord.x) * 0.0625 + offset.y;float p01 = float(coord.y * 4.0 + coord.x + 1.0) * 0.0625 + offset.y;float p10 = float((coord.y + 1.0) * 4.0 + coord.x) * 0.0625 + offset.y;float p11 = float((coord.y + 1.0) * 4.0 + coord.x + 1.0) * 0.0625 + offset.y;vec3 c00 = texture2D(inputImageTexture2, vec2(value, p00)).rgb;vec3 c01 = texture2D(inputImageTexture2, vec2(value, p01)).rgb;vec3 c10 = texture2D(inputImageTexture2, vec2(value, p10)).rgb;vec3 c11 = texture2D(inputImageTexture2, vec2(value, p11)).rgb;float c1 = ((c00.r - c00.g) / (c00.b - c00.g));float c2 = ((c01.r - c01.g) / (c01.b - c01.g));float c3 = ((c10.r - c10.g) / (c10.b - c10.g));float c4 = ((c11.r - c11.g) / (c11.b - c11.g));float c1_2 = mix(c1, c2, frac.x);float c3_4 = mix(c3, c4, frac.x);return mix(c1_2, c3_4, frac.y);}vec3 hsv_to_rgb(vec3 c) {vec4 K = vec4(1.0, 2.0 / 3.0, 1.0 / 3.0, 3.0);vec3 p = abs(fract(c.xxx + K.xyz) * 6.0 - K.www);return c.z * mix(K.xxx, clamp(p - K.xxx, 0.0, 1.0), c.y);}void main() {vec4 texel = texture2D(sourceImage, texCoord);vec4 hsv = texel;hsv.y = min(1.0, hsv.y * 1.2);hsv.z = min(1.0, enhance(hsv.z) * 1.1);gl_FragColor = vec4(hsv_to_rgb(mix(texel.xyz, hsv.xyz, intensity)), texel.w);}";

    /* renamed from: s1  reason: collision with root package name */
    private static final String f55168s1 = "attribute vec4 position;attribute vec2 inputTexCoord;varying vec2 texCoord;uniform highp float inputWidth;uniform highp float inputHeight;varying vec2 leftTexCoord;varying vec2 rightTexCoord;varying vec2 topTexCoord;varying vec2 bottomTexCoord;void main() {gl_Position = position;texCoord = inputTexCoord;highp vec2 widthStep = vec2(1.0 / inputWidth, 0.0);highp vec2 heightStep = vec2(0.0, 1.0 / inputHeight);leftTexCoord = inputTexCoord - widthStep;rightTexCoord = inputTexCoord + widthStep;topTexCoord = inputTexCoord + heightStep;bottomTexCoord = inputTexCoord - heightStep;}";

    /* renamed from: t1  reason: collision with root package name */
    private static final String f55169t1 = "precision highp float;varying vec2 texCoord;varying vec2 leftTexCoord;varying vec2 rightTexCoord;varying vec2 topTexCoord;varying vec2 bottomTexCoord;uniform sampler2D sourceImage;uniform float sharpen;void main() {vec4 result = texture2D(sourceImage, texCoord);vec3 leftTextureColor = texture2D(sourceImage, leftTexCoord).rgb;vec3 rightTextureColor = texture2D(sourceImage, rightTexCoord).rgb;vec3 topTextureColor = texture2D(sourceImage, topTexCoord).rgb;vec3 bottomTextureColor = texture2D(sourceImage, bottomTexCoord).rgb;result.rgb = result.rgb * (1.0 + 4.0 * sharpen) - (leftTextureColor + rightTextureColor + topTextureColor + bottomTextureColor) * sharpen;gl_FragColor = result;}";

    /* renamed from: u1  reason: collision with root package name */
    private static final String f55170u1 = "varying highp vec2 texCoord;uniform sampler2D sourceImage;uniform highp float width;uniform highp float height;uniform sampler2D curvesImage;uniform lowp float skipTone;uniform lowp float shadows;const mediump vec3 hsLuminanceWeighting = vec3(0.3, 0.3, 0.3);uniform lowp float highlights;uniform lowp float contrast;uniform lowp float fadeAmount;const mediump vec3 satLuminanceWeighting = vec3(0.2126, 0.7152, 0.0722);uniform lowp float saturation;uniform lowp float shadowsTintIntensity;uniform lowp float highlightsTintIntensity;uniform lowp vec3 shadowsTintColor;uniform lowp vec3 highlightsTintColor;uniform lowp float exposure;uniform lowp float warmth;uniform lowp float grain;const lowp float permTexUnit = 1.0 / 256.0;const lowp float permTexUnitHalf = 0.5 / 256.0;const lowp float grainsize = 2.3;uniform lowp float vignette;highp float getLuma(highp vec3 rgbP) {return (0.299 * rgbP.r) + (0.587 * rgbP.g) + (0.114 * rgbP.b);}lowp vec3 rgbToHsv(lowp vec3 c) {highp vec4 K = vec4(0.0, -1.0 / 3.0, 2.0 / 3.0, -1.0);highp vec4 p = c.g < c.b ? vec4(c.bg, K.wz) : vec4(c.gb, K.xy);highp vec4 q = c.r < p.x ? vec4(p.xyw, c.r) : vec4(c.r, p.yzx);highp float d = q.x - min(q.w, q.y);highp float e = 1.0e-10;return vec3(abs(q.z + (q.w - q.y) / (6.0 * d + e)), d / (q.x + e), q.x);}lowp vec3 hsvToRgb(lowp vec3 c) {highp vec4 K = vec4(1.0, 2.0 / 3.0, 1.0 / 3.0, 3.0);highp vec3 p = abs(fract(c.xxx + K.xyz) * 6.0 - K.www);return c.z * mix(K.xxx, clamp(p - K.xxx, 0.0, 1.0), c.y);}highp vec3 rgbToHsl(highp vec3 color) {highp vec3 hsl;highp float fmin = min(min(color.r, color.g), color.b);highp float fmax = max(max(color.r, color.g), color.b);highp float delta = fmax - fmin;hsl.z = (fmax + fmin) / 2.0;if (delta == 0.0) {hsl.x = 0.0;hsl.y = 0.0;} else {if (hsl.z < 0.5) {hsl.y = delta / (fmax + fmin);} else {hsl.y = delta / (2.0 - fmax - fmin);}highp float deltaR = (((fmax - color.r) / 6.0) + (delta / 2.0)) / delta;highp float deltaG = (((fmax - color.g) / 6.0) + (delta / 2.0)) / delta;highp float deltaB = (((fmax - color.b) / 6.0) + (delta / 2.0)) / delta;if (color.r == fmax) {hsl.x = deltaB - deltaG;} else if (color.g == fmax) {hsl.x = (1.0 / 3.0) + deltaR - deltaB;} else if (color.b == fmax) {hsl.x = (2.0 / 3.0) + deltaG - deltaR;}if (hsl.x < 0.0) {hsl.x += 1.0;} else if (hsl.x > 1.0) {hsl.x -= 1.0;}}return hsl;}highp float hueToRgb(highp float f1, highp float f2, highp float hue) {if (hue < 0.0) {hue += 1.0;} else if (hue > 1.0) {hue -= 1.0;}highp float res;if ((6.0 * hue) < 1.0) {res = f1 + (f2 - f1) * 6.0 * hue;} else if ((2.0 * hue) < 1.0) {res = f2;} else if ((3.0 * hue) < 2.0) {res = f1 + (f2 - f1) * ((2.0 / 3.0) - hue) * 6.0;} else {res = f1;}return res;}highp vec3 hslToRgb(highp vec3 hsl) {if (hsl.y == 0.0) {return vec3(hsl.z);} else {highp float f2;if (hsl.z < 0.5) {f2 = hsl.z * (1.0 + hsl.y);} else {f2 = (hsl.z + hsl.y) - (hsl.y * hsl.z);}highp float f1 = 2.0 * hsl.z - f2;return vec3(hueToRgb(f1, f2, hsl.x + (1.0/3.0)), hueToRgb(f1, f2, hsl.x), hueToRgb(f1, f2, hsl.x - (1.0/3.0)));}}highp vec3 rgbToYuv(highp vec3 inP) {highp float luma = getLuma(inP);return vec3(luma, (1.0 / 1.772) * (inP.b - luma), (1.0 / 1.402) * (inP.r - luma));}lowp vec3 yuvToRgb(highp vec3 inP) {return vec3(1.402 * inP.b + inP.r, (inP.r - (0.299 * 1.402 / 0.587) * inP.b - (0.114 * 1.772 / 0.587) * inP.g), 1.772 * inP.g + inP.r);}lowp float easeInOutSigmoid(lowp float value, lowp float strength) {if (value > 0.5) {return 1.0 - pow(2.0 - 2.0 * value, 1.0 / (1.0 - strength)) * 0.5;} else {return pow(2.0 * value, 1.0 / (1.0 - strength)) * 0.5;}}lowp vec3 applyLuminanceCurve(lowp vec3 pixel) {highp float index = floor(clamp(pixel.z / (1.0 / 200.0), 0.0, 199.0));pixel.y = mix(0.0, pixel.y, smoothstep(0.0, 0.1, pixel.z) * (1.0 - smoothstep(0.8, 1.0, pixel.z)));pixel.z = texture2D(curvesImage, vec2(1.0 / 200.0 * index, 0)).a;return pixel;}lowp vec3 applyRGBCurve(lowp vec3 pixel) {highp float index = floor(clamp(pixel.r / (1.0 / 200.0), 0.0, 199.0));pixel.r = texture2D(curvesImage, vec2(1.0 / 200.0 * index, 0)).r;index = floor(clamp(pixel.g / (1.0 / 200.0), 0.0, 199.0));pixel.g = clamp(texture2D(curvesImage, vec2(1.0 / 200.0 * index, 0)).g, 0.0, 1.0);index = floor(clamp(pixel.b / (1.0 / 200.0), 0.0, 199.0));pixel.b = clamp(texture2D(curvesImage, vec2(1.0 / 200.0 * index, 0)).b, 0.0, 1.0);return pixel;}highp vec3 fadeAdjust(highp vec3 color, highp float fadeVal) {return (color * (1.0 - fadeVal)) + ((color + (vec3(-0.9772) * pow(vec3(color), vec3(3.0)) + vec3(1.708) * pow(vec3(color), vec3(2.0)) + vec3(-0.1603) * vec3(color) + vec3(0.2878) - color * vec3(0.9))) * fadeVal);}lowp vec3 tintRaiseShadowsCurve(lowp vec3 color) {return vec3(-0.003671) * pow(color, vec3(3.0)) + vec3(0.3842) * pow(color, vec3(2.0)) + vec3(0.3764) * color + vec3(0.2515);}lowp vec3 tintShadows(lowp vec3 texel, lowp vec3 tintColor, lowp float tintAmount) {return clamp(mix(texel, mix(texel, tintRaiseShadowsCurve(texel), tintColor), tintAmount), 0.0, 1.0);} lowp vec3 tintHighlights(lowp vec3 texel, lowp vec3 tintColor, lowp float tintAmount) {return clamp(mix(texel, mix(texel, vec3(1.0) - tintRaiseShadowsCurve(vec3(1.0) - texel), (vec3(1.0) - tintColor)), tintAmount), 0.0, 1.0);}highp vec4 rnm(in highp vec2 tc) {highp float noise = sin(dot(tc, vec2(12.9898, 78.233))) * 43758.5453;return vec4(fract(noise), fract(noise * 1.2154), fract(noise * 1.3453), fract(noise * 1.3647)) * 2.0 - 1.0;}highp float fade(in highp float t) {return t * t * t * (t * (t * 6.0 - 15.0) + 10.0);}highp float pnoise3D(in highp vec3 p) {highp vec3 pi = permTexUnit * floor(p) + permTexUnitHalf;highp vec3 pf = fract(p);highp float perm = rnm(pi.xy).a;highp float n000 = dot(rnm(vec2(perm, pi.z)).rgb * 4.0 - 1.0, pf);highp float n001 = dot(rnm(vec2(perm, pi.z + permTexUnit)).rgb * 4.0 - 1.0, pf - vec3(0.0, 0.0, 1.0));perm = rnm(pi.xy + vec2(0.0, permTexUnit)).a;highp float n010 = dot(rnm(vec2(perm, pi.z)).rgb * 4.0 - 1.0, pf - vec3(0.0, 1.0, 0.0));highp float n011 = dot(rnm(vec2(perm, pi.z + permTexUnit)).rgb * 4.0 - 1.0, pf - vec3(0.0, 1.0, 1.0));perm = rnm(pi.xy + vec2(permTexUnit, 0.0)).a;highp float n100 = dot(rnm(vec2(perm, pi.z)).rgb * 4.0 - 1.0, pf - vec3(1.0, 0.0, 0.0));highp float n101 = dot(rnm(vec2(perm, pi.z + permTexUnit)).rgb * 4.0 - 1.0, pf - vec3(1.0, 0.0, 1.0));perm = rnm(pi.xy + vec2(permTexUnit, permTexUnit)).a;highp float n110 = dot(rnm(vec2(perm, pi.z)).rgb * 4.0 - 1.0, pf - vec3(1.0, 1.0, 0.0));highp float n111 = dot(rnm(vec2(perm, pi.z + permTexUnit)).rgb * 4.0 - 1.0, pf - vec3(1.0, 1.0, 1.0));highp vec4 n_x = mix(vec4(n000, n001, n010, n011), vec4(n100, n101, n110, n111), fade(pf.x));highp vec2 n_xy = mix(n_x.xy, n_x.zw, fade(pf.y));return mix(n_xy.x, n_xy.y, fade(pf.z));}lowp vec2 coordRot(in lowp vec2 tc, in lowp float angle) {return vec2(((tc.x * 2.0 - 1.0) * cos(angle) - (tc.y * 2.0 - 1.0) * sin(angle)) * 0.5 + 0.5, ((tc.y * 2.0 - 1.0) * cos(angle) + (tc.x * 2.0 - 1.0) * sin(angle)) * 0.5 + 0.5);}void main() {lowp vec4 source = texture2D(sourceImage, texCoord);lowp vec4 result = source;const lowp float toolEpsilon = 0.005;if (skipTone < toolEpsilon) {result = vec4(applyRGBCurve(hslToRgb(applyLuminanceCurve(rgbToHsl(result.rgb)))), result.a);}mediump float hsLuminance = dot(result.rgb, hsLuminanceWeighting);mediump float shadow = clamp((pow(hsLuminance, 1.0 / shadows) + (-0.76) * pow(hsLuminance, 2.0 / shadows)) - hsLuminance, 0.0, 1.0);mediump float highlight = clamp((1.0 - (pow(1.0 - hsLuminance, 1.0 / (2.0 - highlights)) + (-0.8) * pow(1.0 - hsLuminance, 2.0 / (2.0 - highlights)))) - hsLuminance, -1.0, 0.0);lowp vec3 hsresult = vec3(0.0, 0.0, 0.0) + ((hsLuminance + shadow + highlight) - 0.0) * ((result.rgb - vec3(0.0, 0.0, 0.0)) / (hsLuminance - 0.0));mediump float contrastedLuminance = ((hsLuminance - 0.5) * 1.5) + 0.5;mediump float whiteInterp = contrastedLuminance * contrastedLuminance * contrastedLuminance;mediump float whiteTarget = clamp(highlights, 1.0, 2.0) - 1.0;hsresult = mix(hsresult, vec3(1.0), whiteInterp * whiteTarget);mediump float invContrastedLuminance = 1.0 - contrastedLuminance;mediump float blackInterp = invContrastedLuminance * invContrastedLuminance * invContrastedLuminance;mediump float blackTarget = 1.0 - clamp(shadows, 0.0, 1.0);hsresult = mix(hsresult, vec3(0.0), blackInterp * blackTarget);result = vec4(hsresult.rgb, result.a);result = vec4(clamp(((result.rgb - vec3(0.5)) * contrast + vec3(0.5)), 0.0, 1.0), result.a);if (abs(fadeAmount) > toolEpsilon) {result.rgb = fadeAdjust(result.rgb, fadeAmount);}lowp float satLuminance = dot(result.rgb, satLuminanceWeighting);lowp vec3 greyScaleColor = vec3(satLuminance);result = vec4(clamp(mix(greyScaleColor, result.rgb, saturation), 0.0, 1.0), result.a);if (abs(shadowsTintIntensity) > toolEpsilon) {result.rgb = tintShadows(result.rgb, shadowsTintColor, shadowsTintIntensity * 2.0);}if (abs(highlightsTintIntensity) > toolEpsilon) {result.rgb = tintHighlights(result.rgb, highlightsTintColor, highlightsTintIntensity * 2.0);}if (abs(exposure) > toolEpsilon) {mediump float mag = exposure * 1.045;mediump float exppower = 1.0 + abs(mag);if (mag < 0.0) {exppower = 1.0 / exppower;}result.r = 1.0 - pow((1.0 - result.r), exppower);result.g = 1.0 - pow((1.0 - result.g), exppower);result.b = 1.0 - pow((1.0 - result.b), exppower);}if (abs(warmth) > toolEpsilon) {highp vec3 yuvVec;if (warmth > 0.0 ) {yuvVec = vec3(0.1765, -0.1255, 0.0902);} else {yuvVec = -vec3(0.0588, 0.1569, -0.1255);}highp vec3 yuvColor = rgbToYuv(result.rgb);highp float luma = yuvColor.r;highp float curveScale = sin(luma * 3.14159);yuvColor += 0.375 * warmth * curveScale * yuvVec;result.rgb = yuvToRgb(yuvColor);}if (abs(grain) > toolEpsilon) {highp vec3 rotOffset = vec3(1.425, 3.892, 5.835);highp vec2 rotCoordsR = coordRot(texCoord, rotOffset.x);highp vec3 noise = vec3(pnoise3D(vec3(rotCoordsR * vec2(width / grainsize, height / grainsize),0.0)));lowp vec3 lumcoeff = vec3(0.299,0.587,0.114);lowp float luminance = dot(result.rgb, lumcoeff);lowp float lum = smoothstep(0.2, 0.0, luminance);lum += luminance;noise = mix(noise,vec3(0.0),pow(lum,4.0));result.rgb = result.rgb + noise * grain;}if (abs(vignette) > toolEpsilon) {const lowp float midpoint = 0.7;const lowp float fuzziness = 0.62;lowp float radDist = length(texCoord - 0.5) / sqrt(0.5);lowp float mag = easeInOutSigmoid(radDist * midpoint, fuzziness) * vignette * 0.645;result.rgb = mix(pow(result.rgb, vec3(1.0 / (1.0 - mag))), vec3(0.0), mag * mag);}gl_FragColor = result;}";

    /* renamed from: v1  reason: collision with root package name */
    private static final int f55171v1 = 256;

    /* renamed from: w1  reason: collision with root package name */
    private static final int f55172w1 = 4;
    private int A;
    private int A0;
    private int B;
    private int B0;
    private int C;
    private int C0;
    private int D;
    private int D0;
    private int E;
    private int E0;
    private int F;
    private int F0;
    private int G;
    private int G0;
    private int H;
    private int H0;
    private int I0;
    private int J0;
    private int K0;
    private int L0;
    private int M;
    private int M0;
    private int N;
    private int N0;
    private int O;
    private int O0;
    private int P;
    private float[] P0;
    private int Q;
    private int Q0;
    private int R;
    private int S;
    private int T;
    private int U;
    private int V;
    private int[] V0;
    private int W;
    private int X;
    private boolean X0;
    private int Y;
    private int Y0;
    private int Z;
    private int Z0;

    /* renamed from: a  reason: collision with root package name */
    public FloatBuffer f55173a;

    /* renamed from: a0  reason: collision with root package name */
    private int f55174a0;

    /* renamed from: a1  reason: collision with root package name */
    private ByteBuffer f55175a1;

    /* renamed from: b  reason: collision with root package name */
    public FloatBuffer f55176b;

    /* renamed from: b0  reason: collision with root package name */
    private int f55177b0;

    /* renamed from: b1  reason: collision with root package name */
    private ByteBuffer f55178b1;

    /* renamed from: c  reason: collision with root package name */
    public FloatBuffer f55179c;

    /* renamed from: c0  reason: collision with root package name */
    private int f55180c0;

    /* renamed from: c1  reason: collision with root package name */
    private ByteBuffer f55181c1;

    /* renamed from: d0  reason: collision with root package name */
    private int f55183d0;

    /* renamed from: d1  reason: collision with root package name */
    private InterfaceC0467b f55184d1;

    /* renamed from: e0  reason: collision with root package name */
    private int f55186e0;

    /* renamed from: e1  reason: collision with root package name */
    private boolean f55187e1;

    /* renamed from: f  reason: collision with root package name */
    private boolean f55188f;

    /* renamed from: f0  reason: collision with root package name */
    private int f55189f0;

    /* renamed from: g  reason: collision with root package name */
    private boolean f55190g;

    /* renamed from: g0  reason: collision with root package name */
    private int f55191g0;

    /* renamed from: h  reason: collision with root package name */
    private a f55192h;

    /* renamed from: h0  reason: collision with root package name */
    private int f55193h0;

    /* renamed from: i  reason: collision with root package name */
    private float f55194i;

    /* renamed from: i0  reason: collision with root package name */
    private int f55195i0;

    /* renamed from: j  reason: collision with root package name */
    private a f55196j;

    /* renamed from: j0  reason: collision with root package name */
    private int f55197j0;

    /* renamed from: k  reason: collision with root package name */
    private boolean f55198k;

    /* renamed from: k0  reason: collision with root package name */
    private int f55199k0;

    /* renamed from: l  reason: collision with root package name */
    private int f55200l;

    /* renamed from: l0  reason: collision with root package name */
    private int f55201l0;

    /* renamed from: m  reason: collision with root package name */
    private int f55202m;

    /* renamed from: m0  reason: collision with root package name */
    private int f55203m0;

    /* renamed from: n  reason: collision with root package name */
    private int f55204n;

    /* renamed from: n0  reason: collision with root package name */
    private int f55205n0;

    /* renamed from: o  reason: collision with root package name */
    private int f55206o;

    /* renamed from: o0  reason: collision with root package name */
    private int f55207o0;

    /* renamed from: p  reason: collision with root package name */
    private int f55208p;

    /* renamed from: p0  reason: collision with root package name */
    private int f55209p0;

    /* renamed from: q  reason: collision with root package name */
    private c f55210q;

    /* renamed from: q0  reason: collision with root package name */
    private int f55211q0;

    /* renamed from: r  reason: collision with root package name */
    private int f55212r;

    /* renamed from: r0  reason: collision with root package name */
    private int f55213r0;

    /* renamed from: s  reason: collision with root package name */
    private int f55214s;

    /* renamed from: s0  reason: collision with root package name */
    private int f55215s0;

    /* renamed from: t  reason: collision with root package name */
    private int f55216t;

    /* renamed from: t0  reason: collision with root package name */
    private int f55217t0;

    /* renamed from: u  reason: collision with root package name */
    private int f55218u;

    /* renamed from: u0  reason: collision with root package name */
    private int f55219u0;

    /* renamed from: v  reason: collision with root package name */
    private int f55220v;

    /* renamed from: v0  reason: collision with root package name */
    private int f55221v0;

    /* renamed from: w  reason: collision with root package name */
    private int f55222w;

    /* renamed from: w0  reason: collision with root package name */
    private int f55223w0;

    /* renamed from: x  reason: collision with root package name */
    private int f55224x;

    /* renamed from: x0  reason: collision with root package name */
    private int f55225x0;

    /* renamed from: y  reason: collision with root package name */
    private int f55226y;

    /* renamed from: y0  reason: collision with root package name */
    private int f55227y0;

    /* renamed from: z  reason: collision with root package name */
    private int f55228z;

    /* renamed from: z0  reason: collision with root package name */
    private int f55229z0;

    /* renamed from: d  reason: collision with root package name */
    private boolean f55182d = true;

    /* renamed from: e  reason: collision with root package name */
    private boolean f55185e = true;
    private int[] I = new int[2];
    private int[] J = new int[2];
    private int[] K = new int[2];
    private int[] L = new int[2];
    private int[] R0 = new int[2];
    private int[] S0 = new int[1];
    private int[] T0 = new int[4];
    private int[] U0 = new int[1];
    private int[] W0 = new int[1];

    /* compiled from: FilterShaders.java */
    /* loaded from: classes3.dex */
    private static class a {

        /* renamed from: a  reason: collision with root package name */
        public int f55230a;

        /* renamed from: b  reason: collision with root package name */
        public int f55231b;

        /* renamed from: c  reason: collision with root package name */
        public int f55232c;

        /* renamed from: d  reason: collision with root package name */
        public int f55233d;

        /* renamed from: e  reason: collision with root package name */
        public int f55234e;

        /* renamed from: f  reason: collision with root package name */
        public int f55235f;

        /* renamed from: g  reason: collision with root package name */
        private String f55236g;

        /* renamed from: h  reason: collision with root package name */
        private String f55237h;

        public a(float f10, float f11, boolean z9) {
            int i4;
            if (z9) {
                f11 = Math.round(f10);
                i4 = 0;
                if (f11 >= 1.0f) {
                    double d4 = f11;
                    int floor = (int) Math.floor(Math.sqrt(Math.pow(d4, 2.0d) * (-2.0d) * Math.log(0.00390625f * Math.sqrt(Math.pow(d4, 2.0d) * 6.283185307179586d))));
                    i4 = floor + (floor % 2);
                }
            } else {
                i4 = (int) f10;
            }
            this.f55237h = b.i(i4, f11);
            this.f55236g = b.u(i4, f11);
        }

        public boolean a() {
            int q9 = b.q(35633, this.f55236g);
            int q10 = b.q(35632, this.f55237h);
            if (q9 == 0 || q10 == 0) {
                return false;
            }
            int glCreateProgram = GLES20.glCreateProgram();
            this.f55230a = glCreateProgram;
            GLES20.glAttachShader(glCreateProgram, q9);
            GLES20.glAttachShader(this.f55230a, q10);
            GLES20.glBindAttribLocation(this.f55230a, 0, "position");
            GLES20.glBindAttribLocation(this.f55230a, 1, "inputTexCoord");
            GLES20.glLinkProgram(this.f55230a);
            int[] iArr = new int[1];
            GLES20.glGetProgramiv(this.f55230a, 35714, iArr, 0);
            if (iArr[0] == 0) {
                GLES20.glDeleteProgram(this.f55230a);
                this.f55230a = 0;
            } else {
                this.f55231b = GLES20.glGetAttribLocation(this.f55230a, "position");
                this.f55232c = GLES20.glGetAttribLocation(this.f55230a, "inputTexCoord");
                this.f55233d = GLES20.glGetUniformLocation(this.f55230a, "sourceImage");
                this.f55234e = GLES20.glGetUniformLocation(this.f55230a, "texelWidthOffset");
                this.f55235f = GLES20.glGetUniformLocation(this.f55230a, "texelHeightOffset");
            }
            return true;
        }

        public void b() {
            int i4 = this.f55230a;
            if (i4 != 0) {
                GLES20.glDeleteProgram(i4);
                this.f55230a = 0;
            }
        }
    }

    /* compiled from: FilterShaders.java */
    /* renamed from: com.rudresh.videocompression.videocompression.b$b  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    public interface InterfaceC0467b {
        int a();

        float b();

        float c();

        float d();

        float e();

        float f();

        float g();

        float h();

        int i();

        float j();

        float k();

        float l();

        boolean m();

        boolean n();

        float o();

        float p();

        Point q();

        float r();

        float s();

        float t();

        ByteBuffer u();

        float v();

        int w();

        float x();
    }

    /* compiled from: FilterShaders.java */
    /* loaded from: classes3.dex */
    private static class c {

        /* renamed from: a  reason: collision with root package name */
        private float[] f55238a;

        /* renamed from: b  reason: collision with root package name */
        private float[] f55239b;

        /* renamed from: c  reason: collision with root package name */
        private float[] f55240c;

        /* renamed from: d  reason: collision with root package name */
        private float[] f55241d;

        /* renamed from: e  reason: collision with root package name */
        private int[] f55242e = new int[1];

        public c() {
            ArrayList<PointF> arrayList = new ArrayList<>();
            arrayList.add(new PointF(0.0f, 0.0f));
            arrayList.add(new PointF(0.5f, 0.5f));
            arrayList.add(new PointF(1.0f, 1.0f));
            ArrayList<PointF> arrayList2 = new ArrayList<>();
            arrayList2.add(new PointF(0.0f, 0.0f));
            arrayList2.add(new PointF(0.47f, 0.57f));
            arrayList2.add(new PointF(1.0f, 1.0f));
            this.f55238a = b(arrayList2);
            float[] b10 = b(arrayList);
            this.f55241d = b10;
            this.f55240c = b10;
            this.f55239b = b10;
            e();
        }

        private float[] b(ArrayList<PointF> arrayList) {
            int size = arrayList.size();
            for (int i4 = 0; i4 < size; i4++) {
                PointF pointF = arrayList.get(i4);
                pointF.x *= 255.0f;
                pointF.y *= 255.0f;
            }
            ArrayList<PointF> d4 = d(arrayList);
            float f10 = d4.get(0).x;
            if (f10 > 0.0f) {
                for (int i10 = (int) f10; i10 >= 0; i10--) {
                    d4.add(0, new PointF(i10, 0.0f));
                }
            }
            float f11 = d4.get(d4.size() - 1).x;
            if (f11 < 255.0f) {
                int i11 = (int) f11;
                while (true) {
                    i11++;
                    if (i11 > 255) {
                        break;
                    }
                    d4.add(new PointF(i11, 255.0f));
                }
            }
            float[] fArr = new float[d4.size()];
            int size2 = d4.size();
            for (int i12 = 0; i12 < size2; i12++) {
                PointF pointF2 = d4.get(i12);
                float sqrt = (float) Math.sqrt(Math.pow(pointF2.x - pointF2.y, 2.0d));
                if (pointF2.x > pointF2.y) {
                    sqrt = -sqrt;
                }
                fArr[i12] = sqrt;
            }
            return fArr;
        }

        private double[] c(ArrayList<PointF> arrayList) {
            int i4;
            int size = arrayList.size();
            if (size > 0) {
                char c10 = 1;
                if (size == 1) {
                    return null;
                }
                char c11 = 0;
                double[][] dArr = (double[][]) Array.newInstance(double.class, size, 3);
                double[] dArr2 = new double[size];
                dArr[0][1] = 1.0d;
                double d4 = 0.0d;
                dArr[0][0] = 0.0d;
                dArr[0][2] = 0.0d;
                int i10 = 1;
                while (true) {
                    i4 = size - 1;
                    if (i10 >= i4) {
                        break;
                    }
                    PointF pointF = arrayList.get(i10 - 1);
                    PointF pointF2 = arrayList.get(i10);
                    int i11 = i10 + 1;
                    PointF pointF3 = arrayList.get(i11);
                    double[] dArr3 = dArr[i10];
                    float f10 = pointF2.x;
                    float f11 = pointF.x;
                    dArr3[c11] = (f10 - f11) / 6.0d;
                    double[] dArr4 = dArr[i10];
                    float f12 = pointF3.x;
                    double[][] dArr5 = dArr;
                    dArr4[c10] = (f12 - f11) / 3.0d;
                    dArr5[i10][2] = (f12 - f10) / 6.0d;
                    float f13 = pointF3.y;
                    float f14 = pointF2.y;
                    dArr2[i10] = ((f13 - f14) / (f12 - f10)) - ((f14 - pointF.y) / (f10 - f11));
                    i10 = i11;
                    dArr = dArr5;
                    c10 = 1;
                    c11 = 0;
                    d4 = 0.0d;
                }
                double[][] dArr6 = dArr;
                double d10 = d4;
                char c12 = 0;
                dArr2[0] = d10;
                dArr2[i4] = d10;
                dArr6[i4][1] = 1.0d;
                dArr6[i4][0] = d10;
                dArr6[i4][2] = d10;
                int i12 = 1;
                while (i12 < size) {
                    int i13 = i12 - 1;
                    double d11 = dArr6[i12][c12] / dArr6[i13][1];
                    double[] dArr7 = dArr6[i12];
                    dArr7[1] = dArr7[1] - (dArr6[i13][2] * d11);
                    dArr6[i12][0] = 0.0d;
                    dArr2[i12] = dArr2[i12] - (d11 * dArr2[i13]);
                    i12++;
                    c12 = 0;
                }
                for (int i14 = size - 2; i14 >= 0; i14--) {
                    int i15 = i14 + 1;
                    double d12 = dArr6[i14][2] / dArr6[i15][1];
                    double[] dArr8 = dArr6[i14];
                    dArr8[1] = dArr8[1] - (dArr6[i15][0] * d12);
                    dArr6[i14][2] = 0.0d;
                    dArr2[i14] = dArr2[i14] - (d12 * dArr2[i15]);
                }
                double[] dArr9 = new double[size];
                for (int i16 = 0; i16 < size; i16++) {
                    dArr9[i16] = dArr2[i16] / dArr6[i16][1];
                }
                return dArr9;
            }
            return null;
        }

        private ArrayList<PointF> d(ArrayList<PointF> arrayList) {
            float f10;
            double[] c10 = c(arrayList);
            int length = c10.length;
            if (length < 1) {
                return null;
            }
            ArrayList<PointF> arrayList2 = new ArrayList<>(length + 1);
            int i4 = 0;
            while (i4 < length - 1) {
                PointF pointF = arrayList.get(i4);
                int i10 = i4 + 1;
                PointF pointF2 = arrayList.get(i10);
                int i11 = (int) pointF.x;
                while (true) {
                    float f11 = pointF2.x;
                    if (i11 < ((int) f11)) {
                        float f12 = i11;
                        ArrayList<PointF> arrayList3 = arrayList2;
                        double d4 = (f12 - f10) / (f11 - f10);
                        double d10 = 1.0d - d4;
                        float f13 = f11 - pointF.x;
                        int i12 = i11;
                        double d11 = f13;
                        PointF pointF3 = pointF;
                        int i13 = i10;
                        float f14 = (float) ((pointF.y * d10) + (pointF2.y * d4) + (((d11 * d11) / 6.0d) * (((((d10 * d10) * d10) - d10) * c10[i4]) + ((((d4 * d4) * d4) - d4) * c10[i13]))));
                        if (f14 > 255.0f) {
                            f14 = 255.0f;
                        } else if (f14 < 0.0f) {
                            f14 = 0.0f;
                        }
                        arrayList3.add(new PointF(f12, f14));
                        i11 = i12 + 1;
                        arrayList2 = arrayList3;
                        pointF = pointF3;
                        i10 = i13;
                    }
                }
                i4 = i10;
            }
            ArrayList<PointF> arrayList4 = arrayList2;
            arrayList4.add(arrayList.get(arrayList.size() - 1));
            return arrayList4;
        }

        private void e() {
            GLES20.glGenTextures(1, this.f55242e, 0);
            GLES20.glBindTexture(3553, this.f55242e[0]);
            GLES20.glTexParameteri(3553, 10241, 9729);
            GLES20.glTexParameteri(3553, 10240, 9729);
            GLES20.glTexParameteri(3553, 10242, 33071);
            GLES20.glTexParameteri(3553, 10243, 33071);
            ByteBuffer allocateDirect = ByteBuffer.allocateDirect(1024);
            allocateDirect.order(ByteOrder.LITTLE_ENDIAN);
            if (this.f55239b.length < 256 || this.f55240c.length < 256 || this.f55241d.length < 256 || this.f55238a.length < 256) {
                return;
            }
            for (int i4 = 0; i4 < 256; i4++) {
                float f10 = i4;
                int min = (int) Math.min(Math.max(this.f55239b[i4] + f10, 0.0f), 255.0f);
                int min2 = (int) Math.min(Math.max(this.f55240c[i4] + f10, 0.0f), 255.0f);
                int min3 = (int) Math.min(Math.max(f10 + this.f55241d[i4], 0.0f), 255.0f);
                allocateDirect.put((byte) Math.min(Math.max(min3 + this.f55238a[min3], 0.0f), 255.0f));
                allocateDirect.put((byte) Math.min(Math.max(min2 + this.f55238a[min2], 0.0f), 255.0f));
                allocateDirect.put((byte) Math.min(Math.max(min + this.f55238a[min], 0.0f), 255.0f));
                allocateDirect.put((byte) -1);
            }
            allocateDirect.position(0);
            GLES20.glTexImage2D(3553, 0, 6408, 256, 1, 0, 6408, 5121, allocateDirect);
        }

        public int a() {
            return this.f55242e[0];
        }
    }

    public b(boolean z9) {
        this.f55187e1 = z9;
        ByteBuffer allocateDirect = ByteBuffer.allocateDirect(32);
        allocateDirect.order(ByteOrder.nativeOrder());
        FloatBuffer asFloatBuffer = allocateDirect.asFloatBuffer();
        this.f55173a = asFloatBuffer;
        asFloatBuffer.put(new float[]{-1.0f, 1.0f, 1.0f, 1.0f, -1.0f, -1.0f, 1.0f, -1.0f});
        this.f55173a.position(0);
        ByteBuffer allocateDirect2 = ByteBuffer.allocateDirect(32);
        allocateDirect2.order(ByteOrder.nativeOrder());
        FloatBuffer asFloatBuffer2 = allocateDirect2.asFloatBuffer();
        this.f55179c = asFloatBuffer2;
        asFloatBuffer2.put(new float[]{-1.0f, -1.0f, 1.0f, -1.0f, -1.0f, 1.0f, 1.0f, 1.0f});
        this.f55179c.position(0);
        ByteBuffer allocateDirect3 = ByteBuffer.allocateDirect(32);
        allocateDirect3.order(ByteOrder.nativeOrder());
        FloatBuffer asFloatBuffer3 = allocateDirect3.asFloatBuffer();
        this.f55176b = asFloatBuffer3;
        asFloatBuffer3.put(new float[]{0.0f, 0.0f, 1.0f, 0.0f, 0.0f, 1.0f, 1.0f, 1.0f});
        this.f55176b.position(0);
    }

    private Bitmap d(Bitmap bitmap, int i4, float f10) {
        Matrix matrix = new Matrix();
        matrix.setScale(f10, f10);
        matrix.postRotate(i4);
        return Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth(), bitmap.getHeight(), matrix, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String i(int i4, float f10) {
        int i10;
        float[] fArr = new float[(i4 * 2) + 1];
        float f11 = 0.0f;
        int i11 = 0;
        while (true) {
            i10 = i4 + 1;
            if (i11 >= i10) {
                break;
            }
            double d4 = f10;
            fArr[i11] = (float) ((1.0d / Math.sqrt(Math.pow(d4, 2.0d) * 6.283185307179586d)) * Math.exp((-Math.pow(i11, 2.0d)) / (Math.pow(d4, 2.0d) * 2.0d)));
            if (i11 == 0) {
                f11 += fArr[i11];
            } else {
                f11 = (float) (f11 + (fArr[i11] * 2.0d));
            }
            i11++;
        }
        for (int i12 = 0; i12 < i10; i12++) {
            fArr[i12] = fArr[i12] / f11;
        }
        int i13 = (i4 / 2) + (i4 % 2);
        int min = Math.min(i13, 7);
        StringBuilder sb = new StringBuilder();
        sb.append("uniform sampler2D sourceImage;\n");
        sb.append("uniform highp float texelWidthOffset;\n");
        sb.append("uniform highp float texelHeightOffset;\n");
        Locale locale = Locale.US;
        sb.append(String.format(locale, "varying highp vec2 blurCoordinates[%d];\n", Integer.valueOf((min * 2) + 1)));
        sb.append("void main()\n");
        sb.append("{\n");
        sb.append("lowp vec4 sum = vec4(0.0);\n");
        sb.append(String.format(locale, "sum += texture2D(sourceImage, blurCoordinates[0]) * %f;\n", Float.valueOf(fArr[0])));
        for (int i14 = 0; i14 < min; i14++) {
            int i15 = i14 * 2;
            int i16 = i15 + 1;
            int i17 = i15 + 2;
            float f12 = fArr[i16] + fArr[i17];
            Locale locale2 = Locale.US;
            sb.append(String.format(locale2, "sum += texture2D(sourceImage, blurCoordinates[%d]) * %f;\n", Integer.valueOf(i16), Float.valueOf(f12)));
            sb.append(String.format(locale2, "sum += texture2D(sourceImage, blurCoordinates[%d]) * %f;\n", Integer.valueOf(i17), Float.valueOf(f12)));
        }
        if (i13 > min) {
            sb.append("highp vec2 singleStepOffset = vec2(texelWidthOffset, texelHeightOffset);\n");
            while (min < i13) {
                int i18 = min * 2;
                int i19 = i18 + 1;
                float f13 = fArr[i19];
                int i20 = i18 + 2;
                float f14 = fArr[i20];
                float f15 = f13 + f14;
                float f16 = ((f13 * i19) + (f14 * i20)) / f15;
                Locale locale3 = Locale.US;
                sb.append(String.format(locale3, "sum += texture2D(sourceImage, blurCoordinates[0] + singleStepOffset * %f) * %f;\n", Float.valueOf(f16), Float.valueOf(f15)));
                sb.append(String.format(locale3, "sum += texture2D(sourceImage, blurCoordinates[0] - singleStepOffset * %f) * %f;\n", Float.valueOf(f16), Float.valueOf(f15)));
                min++;
            }
        }
        sb.append("gl_FragColor = sum;\n");
        sb.append("}\n");
        return sb.toString();
    }

    public static int q(int i4, String str) {
        int glCreateShader = GLES20.glCreateShader(i4);
        GLES20.glShaderSource(glCreateShader, str);
        GLES20.glCompileShader(glCreateShader);
        int[] iArr = new int[1];
        GLES20.glGetShaderiv(glCreateShader, 35713, iArr, 0);
        if (iArr[0] == 0) {
            GLES20.glDeleteShader(glCreateShader);
            return 0;
        }
        return glCreateShader;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String u(int i4, float f10) {
        int i10;
        float[] fArr = new float[(i4 * 2) + 1];
        float f11 = 0.0f;
        int i11 = 0;
        while (true) {
            i10 = i4 + 1;
            if (i11 >= i10) {
                break;
            }
            double d4 = f10;
            fArr[i11] = (float) ((1.0d / Math.sqrt(Math.pow(d4, 2.0d) * 6.283185307179586d)) * Math.exp((-Math.pow(i11, 2.0d)) / (Math.pow(d4, 2.0d) * 2.0d)));
            if (i11 == 0) {
                f11 += fArr[i11];
            } else {
                f11 = (float) (f11 + (fArr[i11] * 2.0d));
            }
            i11++;
        }
        for (int i12 = 0; i12 < i10; i12++) {
            fArr[i12] = fArr[i12] / f11;
        }
        int min = Math.min((i4 / 2) + (i4 % 2), 7);
        float[] fArr2 = new float[min];
        for (int i13 = 0; i13 < min; i13++) {
            int i14 = i13 * 2;
            int i15 = i14 + 1;
            float f12 = fArr[i15];
            int i16 = i14 + 2;
            float f13 = fArr[i16];
            fArr2[i13] = ((f12 * i15) + (f13 * i16)) / (f12 + f13);
        }
        StringBuilder sb = new StringBuilder();
        sb.append("attribute vec4 position;\n");
        sb.append("attribute vec4 inputTexCoord;\n");
        sb.append("uniform float texelWidthOffset;\n");
        sb.append("uniform float texelHeightOffset;\n");
        sb.append(String.format(Locale.US, "varying vec2 blurCoordinates[%d];\n", Integer.valueOf((min * 2) + 1)));
        sb.append("void main()\n");
        sb.append("{\n");
        sb.append("gl_Position = position;\n");
        sb.append("vec2 singleStepOffset = vec2(texelWidthOffset, texelHeightOffset);\n");
        sb.append("blurCoordinates[0] = inputTexCoord.xy;\n");
        for (int i17 = 0; i17 < min; i17++) {
            int i18 = i17 * 2;
            sb.append(String.format(Locale.US, "blurCoordinates[%d] = inputTexCoord.xy + singleStepOffset * %f;\nblurCoordinates[%d] = inputTexCoord.xy - singleStepOffset * %f;\n", Integer.valueOf(i18 + 1), Float.valueOf(fArr2[i17]), Integer.valueOf(i18 + 2), Float.valueOf(fArr2[i17])));
        }
        sb.append(com.alipay.sdk.util.i.f6967d);
        return sb.toString();
    }

    public boolean c() {
        String str;
        int q9;
        int q10;
        String str2;
        int q11;
        int i4;
        char c10 = 0;
        GLES20.glGenTextures(1, this.W0, 0);
        GLES20.glGenTextures(2, this.R0, 0);
        GLES20.glGenFramebuffers(1, this.S0, 0);
        GLES20.glBindTexture(3553, this.R0[1]);
        GLES20.glTexParameteri(3553, 10241, 9729);
        GLES20.glTexParameteri(3553, 10240, 9729);
        GLES20.glTexParameteri(3553, 10242, 33071);
        GLES20.glTexParameteri(3553, 10243, 33071);
        GLES20.glBindTexture(3553, this.W0[0]);
        GLES20.glTexParameteri(3553, 10241, 9729);
        GLES20.glTexParameteri(3553, 10240, 9729);
        GLES20.glTexParameteri(3553, 10242, 33071);
        GLES20.glTexParameteri(3553, 10243, 33071);
        int[] iArr = new int[1];
        int q12 = q(35633, f55155f1);
        int q13 = q(35632, f55170u1);
        if (q12 == 0 || q13 == 0) {
            return false;
        }
        int glCreateProgram = GLES20.glCreateProgram();
        this.T = glCreateProgram;
        GLES20.glAttachShader(glCreateProgram, q12);
        GLES20.glAttachShader(this.T, q13);
        GLES20.glBindAttribLocation(this.T, 0, "position");
        GLES20.glBindAttribLocation(this.T, 1, "inputTexCoord");
        GLES20.glLinkProgram(this.T);
        GLES20.glGetProgramiv(this.T, 35714, iArr, 0);
        if (iArr[0] == 0) {
            GLES20.glDeleteProgram(this.T);
            this.T = 0;
        } else {
            this.U = GLES20.glGetAttribLocation(this.T, "position");
            this.V = GLES20.glGetAttribLocation(this.T, "inputTexCoord");
            this.W = GLES20.glGetUniformLocation(this.T, "sourceImage");
            this.X = GLES20.glGetUniformLocation(this.T, "shadows");
            this.Y = GLES20.glGetUniformLocation(this.T, "highlights");
            this.Z = GLES20.glGetUniformLocation(this.T, "exposure");
            this.f55174a0 = GLES20.glGetUniformLocation(this.T, "contrast");
            this.f55177b0 = GLES20.glGetUniformLocation(this.T, "saturation");
            this.f55180c0 = GLES20.glGetUniformLocation(this.T, "warmth");
            this.f55183d0 = GLES20.glGetUniformLocation(this.T, "vignette");
            this.f55186e0 = GLES20.glGetUniformLocation(this.T, "grain");
            this.f55189f0 = GLES20.glGetUniformLocation(this.T, "width");
            this.f55191g0 = GLES20.glGetUniformLocation(this.T, "height");
            this.f55193h0 = GLES20.glGetUniformLocation(this.T, "curvesImage");
            this.f55195i0 = GLES20.glGetUniformLocation(this.T, "skipTone");
            this.f55197j0 = GLES20.glGetUniformLocation(this.T, "fadeAmount");
            this.f55199k0 = GLES20.glGetUniformLocation(this.T, "shadowsTintIntensity");
            this.f55201l0 = GLES20.glGetUniformLocation(this.T, "highlightsTintIntensity");
            this.f55203m0 = GLES20.glGetUniformLocation(this.T, "shadowsTintColor");
            this.f55205n0 = GLES20.glGetUniformLocation(this.T, "highlightsTintColor");
        }
        int q14 = q(35633, f55168s1);
        int q15 = q(35632, f55169t1);
        if (q14 == 0 || q15 == 0) {
            return false;
        }
        int glCreateProgram2 = GLES20.glCreateProgram();
        this.H0 = glCreateProgram2;
        GLES20.glAttachShader(glCreateProgram2, q14);
        GLES20.glAttachShader(this.H0, q15);
        GLES20.glBindAttribLocation(this.H0, 0, "position");
        GLES20.glBindAttribLocation(this.H0, 1, "inputTexCoord");
        GLES20.glLinkProgram(this.H0);
        GLES20.glGetProgramiv(this.H0, 35714, iArr, 0);
        if (iArr[0] == 0) {
            GLES20.glDeleteProgram(this.H0);
            this.H0 = 0;
        } else {
            this.L0 = GLES20.glGetAttribLocation(this.H0, "position");
            this.M0 = GLES20.glGetAttribLocation(this.H0, "inputTexCoord");
            this.N0 = GLES20.glGetUniformLocation(this.H0, "sourceImage");
            this.J0 = GLES20.glGetUniformLocation(this.H0, "inputWidth");
            this.K0 = GLES20.glGetUniformLocation(this.H0, "inputHeight");
            this.I0 = GLES20.glGetUniformLocation(this.H0, "sharpen");
        }
        a aVar = new a(8.0f, 3.0f, false);
        this.f55196j = aVar;
        if (!aVar.a()) {
            return false;
        }
        boolean z9 = this.f55187e1;
        String str3 = z9 ? "#extension GL_OES_EGL_image_external : require" : "";
        String str4 = z9 ? "samplerExternalOES" : "sampler2D";
        int q16 = q(35633, f55155f1);
        int q17 = q(35632, f55163n1);
        if (q16 == 0 || q17 == 0) {
            return false;
        }
        int glCreateProgram3 = GLES20.glCreateProgram();
        this.f55207o0 = glCreateProgram3;
        GLES20.glAttachShader(glCreateProgram3, q16);
        GLES20.glAttachShader(this.f55207o0, q17);
        GLES20.glBindAttribLocation(this.f55207o0, 0, "position");
        GLES20.glBindAttribLocation(this.f55207o0, 1, "inputTexCoord");
        GLES20.glLinkProgram(this.f55207o0);
        GLES20.glGetProgramiv(this.f55207o0, 35714, iArr, 0);
        String str5 = "inputImageTexture2";
        if (iArr[0] == 0) {
            GLES20.glDeleteProgram(this.f55207o0);
            this.f55207o0 = 0;
        } else {
            this.f55209p0 = GLES20.glGetAttribLocation(this.f55207o0, "position");
            this.f55211q0 = GLES20.glGetAttribLocation(this.f55207o0, "inputTexCoord");
            this.f55213r0 = GLES20.glGetUniformLocation(this.f55207o0, "sourceImage");
            this.f55215s0 = GLES20.glGetUniformLocation(this.f55207o0, "inputImageTexture2");
            this.f55217t0 = GLES20.glGetUniformLocation(this.f55207o0, "excludeSize");
            this.f55219u0 = GLES20.glGetUniformLocation(this.f55207o0, "excludePoint");
            this.f55221v0 = GLES20.glGetUniformLocation(this.f55207o0, "excludeBlurSize");
            this.f55223w0 = GLES20.glGetUniformLocation(this.f55207o0, "angle");
            this.f55225x0 = GLES20.glGetUniformLocation(this.f55207o0, "aspectRatio");
        }
        int q18 = q(35633, f55155f1);
        int q19 = q(35632, f55162m1);
        if (q18 == 0 || q19 == 0) {
            return false;
        }
        int glCreateProgram4 = GLES20.glCreateProgram();
        this.f55227y0 = glCreateProgram4;
        GLES20.glAttachShader(glCreateProgram4, q18);
        GLES20.glAttachShader(this.f55227y0, q19);
        GLES20.glBindAttribLocation(this.f55227y0, 0, "position");
        GLES20.glBindAttribLocation(this.f55227y0, 1, "inputTexCoord");
        GLES20.glLinkProgram(this.f55227y0);
        GLES20.glGetProgramiv(this.f55227y0, 35714, iArr, 0);
        if (iArr[0] == 0) {
            GLES20.glDeleteProgram(this.f55227y0);
            this.f55227y0 = 0;
        } else {
            this.f55229z0 = GLES20.glGetAttribLocation(this.f55227y0, "position");
            this.A0 = GLES20.glGetAttribLocation(this.f55227y0, "inputTexCoord");
            this.B0 = GLES20.glGetUniformLocation(this.f55227y0, "sourceImage");
            this.C0 = GLES20.glGetUniformLocation(this.f55227y0, "inputImageTexture2");
            this.D0 = GLES20.glGetUniformLocation(this.f55227y0, "excludeSize");
            this.E0 = GLES20.glGetUniformLocation(this.f55227y0, "excludePoint");
            this.F0 = GLES20.glGetUniformLocation(this.f55227y0, "excludeBlurSize");
            this.G0 = GLES20.glGetUniformLocation(this.f55227y0, "aspectRatio");
        }
        int i10 = 0;
        while (true) {
            boolean z10 = this.f55187e1;
            if (i10 >= (z10 ? 2 : 1)) {
                String str6 = str5;
                int q20 = q(35633, f55155f1);
                int q21 = q(35632, f55167r1);
                if (q20 == 0 || q21 == 0) {
                    return false;
                }
                int glCreateProgram5 = GLES20.glCreateProgram();
                this.N = glCreateProgram5;
                GLES20.glAttachShader(glCreateProgram5, q20);
                GLES20.glAttachShader(this.N, q21);
                GLES20.glBindAttribLocation(this.N, 0, "position");
                GLES20.glBindAttribLocation(this.N, 1, "inputTexCoord");
                GLES20.glLinkProgram(this.N);
                GLES20.glGetProgramiv(this.N, 35714, iArr, 0);
                if (iArr[0] == 0) {
                    GLES20.glDeleteProgram(this.N);
                    this.N = 0;
                    str = str6;
                } else {
                    this.O = GLES20.glGetAttribLocation(this.N, "position");
                    this.P = GLES20.glGetAttribLocation(this.N, "inputTexCoord");
                    this.Q = GLES20.glGetUniformLocation(this.N, "sourceImage");
                    this.R = GLES20.glGetUniformLocation(this.N, "intensity");
                    str = str6;
                    this.S = GLES20.glGetUniformLocation(this.N, str);
                }
                if (this.f55187e1) {
                    q9 = q(35633, f55164o1);
                } else {
                    q9 = q(35633, f55155f1);
                }
                Locale locale = Locale.US;
                int q22 = q(35632, String.format(locale, f55160k1, str3, str4));
                if (q9 == 0 || q22 == 0) {
                    return false;
                }
                int glCreateProgram6 = GLES20.glCreateProgram();
                this.f55200l = glCreateProgram6;
                GLES20.glAttachShader(glCreateProgram6, q9);
                GLES20.glAttachShader(this.f55200l, q22);
                GLES20.glBindAttribLocation(this.f55200l, 0, "position");
                GLES20.glBindAttribLocation(this.f55200l, 1, "inputTexCoord");
                GLES20.glLinkProgram(this.f55200l);
                GLES20.glGetProgramiv(this.f55200l, 35714, iArr, 0);
                if (iArr[0] == 0) {
                    GLES20.glDeleteProgram(this.f55200l);
                    this.f55200l = 0;
                } else {
                    this.f55202m = GLES20.glGetAttribLocation(this.f55200l, "position");
                    this.f55204n = GLES20.glGetAttribLocation(this.f55200l, "inputTexCoord");
                    this.f55206o = GLES20.glGetUniformLocation(this.f55200l, "sourceImage");
                    if (this.f55187e1) {
                        this.f55208p = GLES20.glGetUniformLocation(this.f55200l, "videoMatrix");
                    }
                }
                int q23 = q(35632, f55161l1);
                int q24 = q(35633, f55156g1);
                if (q24 == 0 || q23 == 0) {
                    return false;
                }
                int glCreateProgram7 = GLES20.glCreateProgram();
                this.f55212r = glCreateProgram7;
                GLES20.glAttachShader(glCreateProgram7, q24);
                GLES20.glAttachShader(this.f55212r, q23);
                GLES20.glBindAttribLocation(this.f55212r, 0, "position");
                GLES20.glBindAttribLocation(this.f55212r, 1, "inputTexCoord");
                GLES20.glLinkProgram(this.f55212r);
                GLES20.glGetProgramiv(this.f55212r, 35714, iArr, 0);
                if (iArr[0] == 0) {
                    GLES20.glDeleteProgram(this.f55212r);
                    this.f55212r = 0;
                } else {
                    this.f55214s = GLES20.glGetAttribLocation(this.f55212r, "position");
                    this.f55216t = GLES20.glGetAttribLocation(this.f55212r, "inputTexCoord");
                    this.f55218u = GLES20.glGetUniformLocation(this.f55212r, "sourceImage");
                    this.f55220v = GLES20.glGetUniformLocation(this.f55212r, str);
                }
                int q25 = q(35632, f55158i1);
                int q26 = q(35633, f55155f1);
                if (q26 == 0 || q25 == 0) {
                    return false;
                }
                int glCreateProgram8 = GLES20.glCreateProgram();
                this.E = glCreateProgram8;
                GLES20.glAttachShader(glCreateProgram8, q26);
                GLES20.glAttachShader(this.E, q25);
                GLES20.glBindAttribLocation(this.E, 0, "position");
                GLES20.glBindAttribLocation(this.E, 1, "inputTexCoord");
                GLES20.glLinkProgram(this.E);
                GLES20.glGetProgramiv(this.E, 35714, iArr, 0);
                if (iArr[0] == 0) {
                    GLES20.glDeleteProgram(this.E);
                    this.E = 0;
                } else {
                    this.F = GLES20.glGetAttribLocation(this.E, "position");
                    this.G = GLES20.glGetAttribLocation(this.E, "inputTexCoord");
                    this.H = GLES20.glGetUniformLocation(this.E, "sourceImage");
                }
                if (this.f55187e1) {
                    q10 = q(35633, f55165p1);
                } else {
                    q10 = q(35633, f55156g1);
                }
                int q27 = q(35632, String.format(locale, f55159j1, str3, str4));
                if (q10 == 0 || q27 == 0) {
                    return false;
                }
                int glCreateProgram9 = GLES20.glCreateProgram();
                this.f55222w = glCreateProgram9;
                GLES20.glAttachShader(glCreateProgram9, q10);
                GLES20.glAttachShader(this.f55222w, q27);
                GLES20.glBindAttribLocation(this.f55222w, 0, "position");
                GLES20.glBindAttribLocation(this.f55222w, 1, "inputTexCoord");
                GLES20.glLinkProgram(this.f55222w);
                GLES20.glGetProgramiv(this.f55222w, 35714, iArr, 0);
                if (iArr[0] == 0) {
                    GLES20.glDeleteProgram(this.f55222w);
                    this.f55222w = 0;
                } else {
                    this.f55224x = GLES20.glGetAttribLocation(this.f55222w, "position");
                    this.f55226y = GLES20.glGetAttribLocation(this.f55222w, "inputTexCoord");
                    this.f55228z = GLES20.glGetUniformLocation(this.f55222w, "sourceImage");
                    this.A = GLES20.glGetUniformLocation(this.f55222w, "inputImageTexture3");
                    this.B = GLES20.glGetUniformLocation(this.f55222w, "toneCurveTexture");
                    this.C = GLES20.glGetUniformLocation(this.f55222w, "mixturePercent");
                    if (this.f55187e1) {
                        this.D = GLES20.glGetUniformLocation(this.f55222w, "videoMatrix");
                    }
                }
                this.f55210q = new c();
                return true;
            }
            if (i10 == 1 && z10) {
                int q28 = q(35633, f55164o1);
                Locale locale2 = Locale.US;
                str2 = str5;
                Object[] objArr = new Object[2];
                objArr[c10] = str3;
                objArr[1] = str4;
                q11 = q(35632, String.format(locale2, f55166q1, objArr));
                i4 = q28;
            } else {
                str2 = str5;
                int q29 = q(35633, f55155f1);
                q11 = q(35632, String.format(Locale.US, f55166q1, "", "sampler2D"));
                i4 = q29;
            }
            if (i4 == 0 || q11 == 0) {
                return false;
            }
            this.I[i10] = GLES20.glCreateProgram();
            GLES20.glAttachShader(this.I[i10], i4);
            GLES20.glAttachShader(this.I[i10], q11);
            GLES20.glBindAttribLocation(this.I[i10], 0, "position");
            GLES20.glBindAttribLocation(this.I[i10], 1, "inputTexCoord");
            GLES20.glLinkProgram(this.I[i10]);
            GLES20.glGetProgramiv(this.I[i10], 35714, iArr, 0);
            if (iArr[0] == 0) {
                GLES20.glDeleteProgram(this.I[i10]);
                this.I[i10] = 0;
            } else {
                this.J[i10] = GLES20.glGetAttribLocation(this.I[i10], "position");
                this.K[i10] = GLES20.glGetAttribLocation(this.I[i10], "inputTexCoord");
                this.L[i10] = GLES20.glGetUniformLocation(this.I[i10], "sourceImage");
                if (i10 == 1) {
                    this.M = GLES20.glGetUniformLocation(this.I[i10], "videoMatrix");
                }
            }
            i10++;
            str5 = str2;
            c10 = 0;
        }
    }

    public boolean e() {
        InterfaceC0467b interfaceC0467b;
        InterfaceC0467b interfaceC0467b2 = this.f55184d1;
        int i4 = interfaceC0467b2 != null ? interfaceC0467b2.i() : 0;
        if (this.f55187e1 || (interfaceC0467b = this.f55184d1) == null || interfaceC0467b.m() || i4 == 0) {
            return false;
        }
        if (this.f55182d) {
            if (!this.f55188f) {
                GLES20.glBindTexture(3553, this.T0[2]);
                GLES20.glTexParameteri(3553, 10241, 9729);
                GLES20.glTexParameteri(3553, 10240, 9729);
                GLES20.glTexParameteri(3553, 10242, 33071);
                GLES20.glTexParameteri(3553, 10243, 33071);
                GLES20.glTexImage2D(3553, 0, 6408, this.Y0, this.Z0, 0, 6408, 5121, null);
                this.f55188f = true;
            }
            GLES20.glUseProgram(this.f55196j.f55230a);
            GLES20.glUniform1i(this.f55196j.f55233d, 0);
            GLES20.glEnableVertexAttribArray(this.f55196j.f55232c);
            GLES20.glVertexAttribPointer(this.f55196j.f55232c, 2, 5126, false, 8, (Buffer) this.f55176b);
            GLES20.glEnableVertexAttribArray(this.f55196j.f55231b);
            GLES20.glVertexAttribPointer(this.f55196j.f55231b, 2, 5126, false, 8, (Buffer) this.f55179c);
            GLES20.glBindFramebuffer(36160, this.V0[0]);
            GLES20.glFramebufferTexture2D(36160, 36064, 3553, this.T0[0], 0);
            GLES20.glActiveTexture(33984);
            GLES20.glBindTexture(3553, this.T0[1]);
            GLES20.glUniform1f(this.f55196j.f55234e, 0.0f);
            GLES20.glUniform1f(this.f55196j.f55235f, 1.0f / this.Z0);
            GLES20.glDrawArrays(5, 0, 4);
            GLES20.glBindFramebuffer(36160, this.V0[2]);
            GLES20.glFramebufferTexture2D(36160, 36064, 3553, this.T0[2], 0);
            GLES20.glActiveTexture(33984);
            GLES20.glBindTexture(3553, this.T0[0]);
            GLES20.glUniform1f(this.f55196j.f55234e, 1.0f / this.Y0);
            GLES20.glUniform1f(this.f55196j.f55235f, 0.0f);
            GLES20.glDrawArrays(5, 0, 4);
            this.f55182d = false;
        }
        GLES20.glBindFramebuffer(36160, this.V0[0]);
        GLES20.glFramebufferTexture2D(36160, 36064, 3553, this.T0[0], 0);
        if (i4 == 1) {
            GLES20.glUseProgram(this.f55227y0);
            GLES20.glUniform1i(this.B0, 0);
            GLES20.glUniform1i(this.C0, 1);
            GLES20.glUniform1f(this.D0, this.f55184d1.t());
            GLES20.glUniform1f(this.F0, this.f55184d1.d());
            Point q9 = this.f55184d1.q();
            GLES20.glUniform2f(this.E0, q9.x, q9.y);
            GLES20.glUniform1f(this.G0, this.Z0 / this.Y0);
            GLES20.glEnableVertexAttribArray(this.A0);
            GLES20.glVertexAttribPointer(this.A0, 2, 5126, false, 8, (Buffer) this.f55176b);
            GLES20.glEnableVertexAttribArray(this.f55229z0);
            GLES20.glVertexAttribPointer(this.f55229z0, 2, 5126, false, 8, (Buffer) this.f55179c);
        } else if (i4 == 2) {
            GLES20.glUseProgram(this.f55207o0);
            GLES20.glUniform1i(this.f55213r0, 0);
            GLES20.glUniform1i(this.f55215s0, 1);
            GLES20.glUniform1f(this.f55217t0, this.f55184d1.t());
            GLES20.glUniform1f(this.f55221v0, this.f55184d1.d());
            GLES20.glUniform1f(this.f55223w0, this.f55184d1.v());
            Point q10 = this.f55184d1.q();
            GLES20.glUniform2f(this.f55219u0, q10.x, q10.y);
            GLES20.glUniform1f(this.f55225x0, this.Z0 / this.Y0);
            GLES20.glEnableVertexAttribArray(this.f55211q0);
            GLES20.glVertexAttribPointer(this.f55211q0, 2, 5126, false, 8, (Buffer) this.f55176b);
            GLES20.glEnableVertexAttribArray(this.f55209p0);
            GLES20.glVertexAttribPointer(this.f55209p0, 2, 5126, false, 8, (Buffer) this.f55179c);
        }
        GLES20.glActiveTexture(33984);
        GLES20.glBindTexture(3553, this.T0[1]);
        GLES20.glActiveTexture(33985);
        GLES20.glBindTexture(3553, this.T0[2]);
        GLES20.glDrawArrays(5, 0, 4);
        return true;
    }

    public void f() {
        GLES20.glBindFramebuffer(36160, this.V0[!this.f55187e1 ? 1 : 0]);
        GLES20.glFramebufferTexture2D(36160, 36064, 3553, this.T0[!this.f55187e1 ? 1 : 0], 0);
        GLES20.glUseProgram(this.T);
        GLES20.glActiveTexture(33984);
        GLES20.glBindTexture(3553, this.T0[this.f55187e1 ? 1 : 0]);
        GLES20.glUniform1i(this.W, 0);
        InterfaceC0467b interfaceC0467b = this.f55184d1;
        if (interfaceC0467b != null && !interfaceC0467b.m()) {
            GLES20.glUniform1f(this.X, this.f55184d1.j());
            GLES20.glUniform1f(this.Y, this.f55184d1.f());
            GLES20.glUniform1f(this.Z, this.f55184d1.o());
            GLES20.glUniform1f(this.f55174a0, this.f55184d1.s());
            GLES20.glUniform1f(this.f55177b0, this.f55184d1.x());
            GLES20.glUniform1f(this.f55180c0, this.f55184d1.c());
            GLES20.glUniform1f(this.f55183d0, this.f55184d1.p());
            GLES20.glUniform1f(this.f55186e0, this.f55184d1.b());
            GLES20.glUniform1f(this.f55197j0, this.f55184d1.l());
            int w9 = this.f55184d1.w();
            int a10 = this.f55184d1.a();
            GLES20.glUniform3f(this.f55205n0, ((w9 >> 16) & 255) / 255.0f, ((w9 >> 8) & 255) / 255.0f, (w9 & 255) / 255.0f);
            GLES20.glUniform1f(this.f55201l0, this.f55184d1.h());
            GLES20.glUniform3f(this.f55203m0, ((a10 >> 16) & 255) / 255.0f, ((a10 >> 8) & 255) / 255.0f, (a10 & 255) / 255.0f);
            GLES20.glUniform1f(this.f55199k0, this.f55184d1.e());
            boolean n9 = this.f55184d1.n();
            GLES20.glUniform1f(this.f55195i0, n9 ? 0.0f : 1.0f);
            if (n9) {
                ByteBuffer u9 = this.f55184d1.u();
                GLES20.glActiveTexture(33985);
                GLES20.glBindTexture(3553, this.W0[0]);
                GLES20.glTexImage2D(3553, 0, 6408, 200, 1, 0, 6408, 5121, u9);
                GLES20.glUniform1i(this.f55193h0, 1);
            }
        } else {
            GLES20.glUniform1f(this.X, 1.0f);
            GLES20.glUniform1f(this.Y, 1.0f);
            GLES20.glUniform1f(this.Z, 0.0f);
            GLES20.glUniform1f(this.f55174a0, 1.0f);
            GLES20.glUniform1f(this.f55177b0, 1.0f);
            GLES20.glUniform1f(this.f55180c0, 0.0f);
            GLES20.glUniform1f(this.f55183d0, 0.0f);
            GLES20.glUniform1f(this.f55186e0, 0.0f);
            GLES20.glUniform1f(this.f55197j0, 0.0f);
            GLES20.glUniform3f(this.f55205n0, 0.0f, 0.0f, 0.0f);
            GLES20.glUniform1f(this.f55201l0, 0.0f);
            GLES20.glUniform3f(this.f55203m0, 0.0f, 0.0f, 0.0f);
            GLES20.glUniform1f(this.f55199k0, 0.0f);
            GLES20.glUniform1f(this.f55195i0, 1.0f);
        }
        GLES20.glUniform1f(this.f55189f0, this.Y0);
        GLES20.glUniform1f(this.f55191g0, this.Z0);
        GLES20.glEnableVertexAttribArray(this.V);
        GLES20.glVertexAttribPointer(this.V, 2, 5126, false, 8, (Buffer) this.f55176b);
        GLES20.glEnableVertexAttribArray(this.U);
        GLES20.glVertexAttribPointer(this.U, 2, 5126, false, 8, (Buffer) this.f55179c);
        GLES20.glDrawArrays(5, 0, 4);
    }

    public void g() {
        if (this.f55187e1) {
            return;
        }
        GLES20.glBindFramebuffer(36160, this.V0[0]);
        GLES20.glFramebufferTexture2D(36160, 36064, 3553, this.T0[0], 0);
        GLES20.glUseProgram(this.H0);
        GLES20.glActiveTexture(33984);
        GLES20.glBindTexture(3553, this.T0[1]);
        GLES20.glUniform1i(this.N0, 0);
        InterfaceC0467b interfaceC0467b = this.f55184d1;
        if (interfaceC0467b != null && !interfaceC0467b.m()) {
            GLES20.glUniform1f(this.I0, this.f55184d1.r());
        } else {
            GLES20.glUniform1f(this.I0, 0.0f);
        }
        GLES20.glUniform1f(this.J0, this.Y0);
        GLES20.glUniform1f(this.K0, this.Z0);
        GLES20.glEnableVertexAttribArray(this.M0);
        GLES20.glVertexAttribPointer(this.M0, 2, 5126, false, 8, (Buffer) this.f55176b);
        GLES20.glEnableVertexAttribArray(this.L0);
        GLES20.glVertexAttribPointer(this.L0, 2, 5126, false, 8, (Buffer) this.f55179c);
        GLES20.glDrawArrays(5, 0, 4);
    }

    public boolean h() {
        int i4;
        InterfaceC0467b interfaceC0467b = this.f55184d1;
        if (interfaceC0467b != null && !interfaceC0467b.m() && this.f55184d1.g() > 0.0f && (i4 = this.Y0) > 0 && this.Z0 > 0) {
            if (this.f55185e || this.f55187e1) {
                float f10 = i4 * 0.006f;
                if (this.f55192h == null || Math.abs(this.f55194i - f10) > 1.0E-4d) {
                    a aVar = this.f55192h;
                    if (aVar != null) {
                        aVar.b();
                    }
                    this.f55194i = f10;
                    a aVar2 = new a(f10, 2.0f, true);
                    this.f55192h = aVar2;
                    aVar2.a();
                }
                if (!this.f55190g) {
                    GLES20.glBindTexture(3553, this.T0[3]);
                    GLES20.glTexParameteri(3553, 10241, 9729);
                    GLES20.glTexParameteri(3553, 10240, 9729);
                    GLES20.glTexParameteri(3553, 10242, 33071);
                    GLES20.glTexParameteri(3553, 10243, 33071);
                    GLES20.glTexImage2D(3553, 0, 6408, this.Y0, this.Z0, 0, 6408, 5121, null);
                    this.f55190g = true;
                }
                GLES20.glUseProgram(this.f55200l);
                GLES20.glUniform1i(this.f55206o, 0);
                GLES20.glEnableVertexAttribArray(this.f55204n);
                GLES20.glVertexAttribPointer(this.f55204n, 2, 5126, false, 8, (Buffer) this.f55176b);
                GLES20.glEnableVertexAttribArray(this.f55202m);
                if (this.f55187e1) {
                    GLES20.glUniformMatrix4fv(this.f55208p, 1, false, this.P0, 0);
                }
                GLES20.glVertexAttribPointer(this.f55202m, 2, 5126, false, 8, (Buffer) this.f55179c);
                GLES20.glBindFramebuffer(36160, this.V0[0]);
                GLES20.glFramebufferTexture2D(36160, 36064, 3553, this.T0[0], 0);
                GLES20.glActiveTexture(33984);
                if (this.f55187e1) {
                    GLES20.glBindTexture(36197, this.O0);
                } else {
                    GLES20.glBindTexture(3553, this.U0[0]);
                }
                GLES20.glDrawArrays(5, 0, 4);
                GLES20.glUseProgram(this.f55192h.f55230a);
                GLES20.glUniform1i(this.f55192h.f55233d, 0);
                GLES20.glEnableVertexAttribArray(this.f55192h.f55232c);
                GLES20.glVertexAttribPointer(this.f55192h.f55232c, 2, 5126, false, 8, (Buffer) this.f55176b);
                GLES20.glEnableVertexAttribArray(this.f55192h.f55231b);
                GLES20.glVertexAttribPointer(this.f55192h.f55231b, 2, 5126, false, 8, (Buffer) this.f55179c);
                GLES20.glBindFramebuffer(36160, this.V0[1]);
                GLES20.glFramebufferTexture2D(36160, 36064, 3553, this.T0[1], 0);
                GLES20.glActiveTexture(33984);
                GLES20.glBindTexture(3553, this.T0[0]);
                GLES20.glUniform1f(this.f55192h.f55234e, 0.0f);
                GLES20.glUniform1f(this.f55192h.f55235f, 1.0f / this.Z0);
                GLES20.glDrawArrays(5, 0, 4);
                GLES20.glBindFramebuffer(36160, this.V0[3]);
                GLES20.glFramebufferTexture2D(36160, 36064, 3553, this.T0[3], 0);
                GLES20.glActiveTexture(33984);
                GLES20.glBindTexture(3553, this.T0[1]);
                GLES20.glUniform1f(this.f55192h.f55234e, 1.0f / this.Y0);
                GLES20.glUniform1f(this.f55192h.f55235f, 0.0f);
                GLES20.glDrawArrays(5, 0, 4);
                GLES20.glUseProgram(this.f55212r);
                GLES20.glUniform1i(this.f55218u, 0);
                GLES20.glUniform1i(this.f55220v, 1);
                GLES20.glEnableVertexAttribArray(this.f55216t);
                GLES20.glVertexAttribPointer(this.f55216t, 2, 5126, false, 8, (Buffer) this.f55176b);
                GLES20.glEnableVertexAttribArray(this.f55214s);
                GLES20.glVertexAttribPointer(this.f55214s, 2, 5126, false, 8, (Buffer) this.f55179c);
                GLES20.glBindFramebuffer(36160, this.V0[1]);
                GLES20.glFramebufferTexture2D(36160, 36064, 3553, this.T0[1], 0);
                GLES20.glActiveTexture(33984);
                GLES20.glBindTexture(3553, this.T0[0]);
                GLES20.glActiveTexture(33985);
                GLES20.glBindTexture(3553, this.T0[3]);
                GLES20.glDrawArrays(5, 0, 4);
                GLES20.glUseProgram(this.E);
                GLES20.glUniform1i(this.H, 0);
                GLES20.glEnableVertexAttribArray(this.G);
                GLES20.glVertexAttribPointer(this.G, 2, 5126, false, 8, (Buffer) this.f55176b);
                GLES20.glEnableVertexAttribArray(this.F);
                GLES20.glVertexAttribPointer(this.F, 2, 5126, false, 8, (Buffer) this.f55179c);
                GLES20.glBindFramebuffer(36160, this.V0[3]);
                GLES20.glFramebufferTexture2D(36160, 36064, 3553, this.T0[3], 0);
                GLES20.glActiveTexture(33984);
                GLES20.glBindTexture(3553, this.T0[1]);
                GLES20.glDrawArrays(5, 0, 4);
                this.f55185e = false;
            }
            this.f55198k = true;
            this.X0 = false;
            GLES20.glUseProgram(this.f55222w);
            GLES20.glUniform1i(this.f55228z, 0);
            GLES20.glUniform1i(this.A, 1);
            GLES20.glUniform1i(this.B, 2);
            GLES20.glUniform1f(this.C, this.f55184d1.g());
            GLES20.glEnableVertexAttribArray(this.f55226y);
            GLES20.glVertexAttribPointer(this.f55226y, 2, 5126, false, 8, (Buffer) this.f55176b);
            GLES20.glEnableVertexAttribArray(this.f55224x);
            GLES20.glVertexAttribPointer(this.f55224x, 2, 5126, false, 8, (Buffer) this.f55179c);
            if (this.f55187e1) {
                GLES20.glUniformMatrix4fv(this.D, 1, false, this.P0, 0);
            }
            GLES20.glBindFramebuffer(36160, this.V0[1]);
            GLES20.glFramebufferTexture2D(36160, 36064, 3553, this.T0[1], 0);
            GLES20.glActiveTexture(33984);
            if (this.f55187e1) {
                GLES20.glBindTexture(36197, this.O0);
            } else {
                GLES20.glBindTexture(3553, this.U0[0]);
            }
            GLES20.glActiveTexture(33985);
            GLES20.glBindTexture(3553, this.T0[3]);
            GLES20.glActiveTexture(33986);
            GLES20.glBindTexture(3553, this.f55210q.a());
            GLES20.glDrawArrays(5, 0, 4);
            return true;
        }
        if (this.f55198k) {
            this.X0 = false;
            this.f55198k = false;
        }
        return false;
    }

    public int j() {
        return this.Z0;
    }

    public int k() {
        return this.Y0;
    }

    public int l() {
        int[] iArr = this.V0;
        if (iArr != null) {
            return iArr[!this.f55187e1 ? 1 : 0];
        }
        return 0;
    }

    public int m(int i4) {
        if (this.f55187e1) {
            return this.T0[i4 == 0 ? (char) 1 : (char) 0];
        }
        return this.T0[i4];
    }

    public FloatBuffer n() {
        return this.f55176b;
    }

    public FloatBuffer o() {
        return this.f55173a;
    }

    public FloatBuffer p() {
        return this.f55179c;
    }

    public void r(float[] fArr) {
        this.P0 = fArr;
        this.X0 = false;
    }

    public void s() {
        this.f55182d = true;
        this.f55185e = true;
    }

    public void t(InterfaceC0467b interfaceC0467b) {
        this.f55184d1 = interfaceC0467b;
    }
}
