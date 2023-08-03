.class public Lcom/rudresh/videocompression/videocompression/b;
.super Ljava/lang/Object;
.source "FilterShaders.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rudresh/videocompression/videocompression/b$c;,
        Lcom/rudresh/videocompression/videocompression/b$a;,
        Lcom/rudresh/videocompression/videocompression/b$b;
    }
.end annotation


# static fields
.field public static final f1:Ljava/lang/String; = "attribute vec4 position;attribute vec2 inputTexCoord;varying vec2 texCoord;void main() {gl_Position = position;texCoord = inputTexCoord;}"

.field public static final g1:Ljava/lang/String; = "attribute vec4 position;attribute vec2 inputTexCoord;varying vec2 texCoord;varying vec2 texCoord2;void main() {gl_Position = position;texCoord = inputTexCoord;texCoord2 = inputTexCoord;}"

.field public static final h1:Ljava/lang/String; = "varying highp vec2 texCoord;uniform sampler2D sourceImage;void main() {gl_FragColor = texture2D(sourceImage, texCoord);}"

.field private static final i1:Ljava/lang/String; = "precision lowp float;varying highp vec2 texCoord;uniform sampler2D sourceImage;void main() {vec4 color = texture2D(sourceImage, texCoord);float hardLightColor = color.b;for (int i = 0; i < 3; ++i){if (hardLightColor < 0.5) {hardLightColor = hardLightColor * hardLightColor * 2.0;} else {hardLightColor = 1.0 - (1.0 - hardLightColor) * (1.0 - hardLightColor) * 2.0;}}float k = 255.0 / (164.0 - 75.0);hardLightColor = (hardLightColor - 75.0 / 255.0) * k;gl_FragColor = vec4(vec3(hardLightColor), color.a);}"

.field private static final j1:Ljava/lang/String; = "%1$s\nprecision lowp float;varying highp vec2 texCoord;varying highp vec2 texCoord2;uniform %2$s sourceImage;uniform sampler2D toneCurveTexture;uniform sampler2D inputImageTexture3;uniform lowp float mixturePercent;void main() {vec4 image = texture2D(sourceImage, texCoord);vec4 mask = texture2D(inputImageTexture3, texCoord2);float redCurveValue = texture2D(toneCurveTexture, vec2(image.r, 0.0)).r;float greenCurveValue = texture2D(toneCurveTexture, vec2(image.g, 0.0)).g;float blueCurveValue = texture2D(toneCurveTexture, vec2(image.b, 0.0)).b;vec4 result = vec4(redCurveValue, greenCurveValue, blueCurveValue, image.a);vec4 tone = mix(image, result, mixturePercent);gl_FragColor = vec4(mix(image.rgb, tone.rgb, 1.0 - mask.b), 1.0);}"

.field private static final k1:Ljava/lang/String; = "%1$s\nprecision lowp float;varying highp vec2 texCoord;uniform %2$s sourceImage;void main() {vec4 inp = texture2D(sourceImage, texCoord);vec4 image = vec4(inp.rgb * pow(2.0, -1.0), inp.w);vec4 base = vec4(image.g, image.g, image.g, 1.0);vec4 overlay = vec4(image.b, image.b, image.b, 1.0);float ba = 2.0 * overlay.b * base.b + overlay.b * (1.0 - base.a) + base.b * (1.0 - overlay.a);gl_FragColor = vec4(ba,ba,ba,image.a);}"

.field private static final l1:Ljava/lang/String; = "precision lowp float;varying highp vec2 texCoord;varying highp vec2 texCoord2;uniform sampler2D sourceImage;uniform sampler2D inputImageTexture2;void main() {vec4 image = texture2D(sourceImage, texCoord);vec4 blurredImage = texture2D(inputImageTexture2, texCoord2);gl_FragColor = vec4((image.rgb - blurredImage.rgb + vec3(0.5,0.5,0.5)), image.a);}"

.field private static final m1:Ljava/lang/String; = "varying highp vec2 texCoord;uniform sampler2D sourceImage;uniform sampler2D inputImageTexture2;uniform lowp float excludeSize;uniform lowp vec2 excludePoint;uniform lowp float excludeBlurSize;uniform highp float aspectRatio;void main() {lowp vec4 sharpImageColor = texture2D(sourceImage, texCoord);lowp vec4 blurredImageColor = texture2D(inputImageTexture2, texCoord);highp vec2 texCoordToUse = vec2(texCoord.x, (texCoord.y * aspectRatio + 0.5 - 0.5 * aspectRatio));highp float distanceFromCenter = distance(excludePoint, texCoordToUse);gl_FragColor = mix(sharpImageColor, blurredImageColor, smoothstep(excludeSize - excludeBlurSize, excludeSize, distanceFromCenter));}"

.field private static final n1:Ljava/lang/String; = "varying highp vec2 texCoord;uniform sampler2D sourceImage;uniform sampler2D inputImageTexture2;uniform lowp float excludeSize;uniform lowp vec2 excludePoint;uniform lowp float excludeBlurSize;uniform highp float angle;uniform highp float aspectRatio;void main() {lowp vec4 sharpImageColor = texture2D(sourceImage, texCoord);lowp vec4 blurredImageColor = texture2D(inputImageTexture2, texCoord);highp vec2 texCoordToUse = vec2(texCoord.x, (texCoord.y * aspectRatio + 0.5 - 0.5 * aspectRatio));highp float distanceFromCenter = abs((texCoordToUse.x - excludePoint.x) * aspectRatio * cos(angle) + (texCoordToUse.y - excludePoint.y) * sin(angle));gl_FragColor = mix(sharpImageColor, blurredImageColor, smoothstep(excludeSize - excludeBlurSize, excludeSize, distanceFromCenter));}"

.field private static final o1:Ljava/lang/String; = "attribute vec4 position;uniform mat4 videoMatrix;attribute vec4 inputTexCoord;varying vec2 texCoord;void main() {gl_Position = position;texCoord = vec2(videoMatrix * inputTexCoord).xy;}"

.field private static final p1:Ljava/lang/String; = "attribute vec4 position;uniform mat4 videoMatrix;attribute vec4 inputTexCoord;varying vec2 texCoord;varying vec2 texCoord2;void main() {gl_Position = position;texCoord = vec2(videoMatrix * inputTexCoord).xy;texCoord2 = inputTexCoord.xy;}"

.field private static final q1:Ljava/lang/String; = "%1$s\nprecision highp float;varying vec2 texCoord;uniform %2$s sourceImage;vec3 rgb_to_hsv(vec3 c) {vec4 K = vec4(0.0, -1.0 / 3.0, 2.0 / 3.0, -1.0);vec4 p = c.g < c.b ? vec4(c.bg, K.wz) : vec4(c.gb, K.xy);vec4 q = c.r < p.x ? vec4(p.xyw, c.r) : vec4(c.r, p.yzx);float d = q.x - min(q.w, q.y);float e = 1.0e-10;return vec3(abs(q.z + (q.w - q.y) / (6.0 * d + e)), d / (q.x + e), q.x);}void main() {vec4 texel = texture2D(sourceImage, texCoord);gl_FragColor = vec4(rgb_to_hsv(texel.rgb), texel.a);}"

.field private static final r1:Ljava/lang/String; = "precision highp float;varying vec2 texCoord;uniform sampler2D sourceImage;uniform sampler2D inputImageTexture2;uniform float intensity;float enhance(float value) {const vec2 offset = vec2(0.001953125, 0.03125);value = value + offset.x;vec2 coord = (clamp(texCoord, 0.125, 1.0 - 0.125001) - 0.125) * 4.0;vec2 frac = fract(coord);coord = floor(coord);float p00 = float(coord.y * 4.0 + coord.x) * 0.0625 + offset.y;float p01 = float(coord.y * 4.0 + coord.x + 1.0) * 0.0625 + offset.y;float p10 = float((coord.y + 1.0) * 4.0 + coord.x) * 0.0625 + offset.y;float p11 = float((coord.y + 1.0) * 4.0 + coord.x + 1.0) * 0.0625 + offset.y;vec3 c00 = texture2D(inputImageTexture2, vec2(value, p00)).rgb;vec3 c01 = texture2D(inputImageTexture2, vec2(value, p01)).rgb;vec3 c10 = texture2D(inputImageTexture2, vec2(value, p10)).rgb;vec3 c11 = texture2D(inputImageTexture2, vec2(value, p11)).rgb;float c1 = ((c00.r - c00.g) / (c00.b - c00.g));float c2 = ((c01.r - c01.g) / (c01.b - c01.g));float c3 = ((c10.r - c10.g) / (c10.b - c10.g));float c4 = ((c11.r - c11.g) / (c11.b - c11.g));float c1_2 = mix(c1, c2, frac.x);float c3_4 = mix(c3, c4, frac.x);return mix(c1_2, c3_4, frac.y);}vec3 hsv_to_rgb(vec3 c) {vec4 K = vec4(1.0, 2.0 / 3.0, 1.0 / 3.0, 3.0);vec3 p = abs(fract(c.xxx + K.xyz) * 6.0 - K.www);return c.z * mix(K.xxx, clamp(p - K.xxx, 0.0, 1.0), c.y);}void main() {vec4 texel = texture2D(sourceImage, texCoord);vec4 hsv = texel;hsv.y = min(1.0, hsv.y * 1.2);hsv.z = min(1.0, enhance(hsv.z) * 1.1);gl_FragColor = vec4(hsv_to_rgb(mix(texel.xyz, hsv.xyz, intensity)), texel.w);}"

.field private static final s1:Ljava/lang/String; = "attribute vec4 position;attribute vec2 inputTexCoord;varying vec2 texCoord;uniform highp float inputWidth;uniform highp float inputHeight;varying vec2 leftTexCoord;varying vec2 rightTexCoord;varying vec2 topTexCoord;varying vec2 bottomTexCoord;void main() {gl_Position = position;texCoord = inputTexCoord;highp vec2 widthStep = vec2(1.0 / inputWidth, 0.0);highp vec2 heightStep = vec2(0.0, 1.0 / inputHeight);leftTexCoord = inputTexCoord - widthStep;rightTexCoord = inputTexCoord + widthStep;topTexCoord = inputTexCoord + heightStep;bottomTexCoord = inputTexCoord - heightStep;}"

.field private static final t1:Ljava/lang/String; = "precision highp float;varying vec2 texCoord;varying vec2 leftTexCoord;varying vec2 rightTexCoord;varying vec2 topTexCoord;varying vec2 bottomTexCoord;uniform sampler2D sourceImage;uniform float sharpen;void main() {vec4 result = texture2D(sourceImage, texCoord);vec3 leftTextureColor = texture2D(sourceImage, leftTexCoord).rgb;vec3 rightTextureColor = texture2D(sourceImage, rightTexCoord).rgb;vec3 topTextureColor = texture2D(sourceImage, topTexCoord).rgb;vec3 bottomTextureColor = texture2D(sourceImage, bottomTexCoord).rgb;result.rgb = result.rgb * (1.0 + 4.0 * sharpen) - (leftTextureColor + rightTextureColor + topTextureColor + bottomTextureColor) * sharpen;gl_FragColor = result;}"

.field private static final u1:Ljava/lang/String; = "varying highp vec2 texCoord;uniform sampler2D sourceImage;uniform highp float width;uniform highp float height;uniform sampler2D curvesImage;uniform lowp float skipTone;uniform lowp float shadows;const mediump vec3 hsLuminanceWeighting = vec3(0.3, 0.3, 0.3);uniform lowp float highlights;uniform lowp float contrast;uniform lowp float fadeAmount;const mediump vec3 satLuminanceWeighting = vec3(0.2126, 0.7152, 0.0722);uniform lowp float saturation;uniform lowp float shadowsTintIntensity;uniform lowp float highlightsTintIntensity;uniform lowp vec3 shadowsTintColor;uniform lowp vec3 highlightsTintColor;uniform lowp float exposure;uniform lowp float warmth;uniform lowp float grain;const lowp float permTexUnit = 1.0 / 256.0;const lowp float permTexUnitHalf = 0.5 / 256.0;const lowp float grainsize = 2.3;uniform lowp float vignette;highp float getLuma(highp vec3 rgbP) {return (0.299 * rgbP.r) + (0.587 * rgbP.g) + (0.114 * rgbP.b);}lowp vec3 rgbToHsv(lowp vec3 c) {highp vec4 K = vec4(0.0, -1.0 / 3.0, 2.0 / 3.0, -1.0);highp vec4 p = c.g < c.b ? vec4(c.bg, K.wz) : vec4(c.gb, K.xy);highp vec4 q = c.r < p.x ? vec4(p.xyw, c.r) : vec4(c.r, p.yzx);highp float d = q.x - min(q.w, q.y);highp float e = 1.0e-10;return vec3(abs(q.z + (q.w - q.y) / (6.0 * d + e)), d / (q.x + e), q.x);}lowp vec3 hsvToRgb(lowp vec3 c) {highp vec4 K = vec4(1.0, 2.0 / 3.0, 1.0 / 3.0, 3.0);highp vec3 p = abs(fract(c.xxx + K.xyz) * 6.0 - K.www);return c.z * mix(K.xxx, clamp(p - K.xxx, 0.0, 1.0), c.y);}highp vec3 rgbToHsl(highp vec3 color) {highp vec3 hsl;highp float fmin = min(min(color.r, color.g), color.b);highp float fmax = max(max(color.r, color.g), color.b);highp float delta = fmax - fmin;hsl.z = (fmax + fmin) / 2.0;if (delta == 0.0) {hsl.x = 0.0;hsl.y = 0.0;} else {if (hsl.z < 0.5) {hsl.y = delta / (fmax + fmin);} else {hsl.y = delta / (2.0 - fmax - fmin);}highp float deltaR = (((fmax - color.r) / 6.0) + (delta / 2.0)) / delta;highp float deltaG = (((fmax - color.g) / 6.0) + (delta / 2.0)) / delta;highp float deltaB = (((fmax - color.b) / 6.0) + (delta / 2.0)) / delta;if (color.r == fmax) {hsl.x = deltaB - deltaG;} else if (color.g == fmax) {hsl.x = (1.0 / 3.0) + deltaR - deltaB;} else if (color.b == fmax) {hsl.x = (2.0 / 3.0) + deltaG - deltaR;}if (hsl.x < 0.0) {hsl.x += 1.0;} else if (hsl.x > 1.0) {hsl.x -= 1.0;}}return hsl;}highp float hueToRgb(highp float f1, highp float f2, highp float hue) {if (hue < 0.0) {hue += 1.0;} else if (hue > 1.0) {hue -= 1.0;}highp float res;if ((6.0 * hue) < 1.0) {res = f1 + (f2 - f1) * 6.0 * hue;} else if ((2.0 * hue) < 1.0) {res = f2;} else if ((3.0 * hue) < 2.0) {res = f1 + (f2 - f1) * ((2.0 / 3.0) - hue) * 6.0;} else {res = f1;}return res;}highp vec3 hslToRgb(highp vec3 hsl) {if (hsl.y == 0.0) {return vec3(hsl.z);} else {highp float f2;if (hsl.z < 0.5) {f2 = hsl.z * (1.0 + hsl.y);} else {f2 = (hsl.z + hsl.y) - (hsl.y * hsl.z);}highp float f1 = 2.0 * hsl.z - f2;return vec3(hueToRgb(f1, f2, hsl.x + (1.0/3.0)), hueToRgb(f1, f2, hsl.x), hueToRgb(f1, f2, hsl.x - (1.0/3.0)));}}highp vec3 rgbToYuv(highp vec3 inP) {highp float luma = getLuma(inP);return vec3(luma, (1.0 / 1.772) * (inP.b - luma), (1.0 / 1.402) * (inP.r - luma));}lowp vec3 yuvToRgb(highp vec3 inP) {return vec3(1.402 * inP.b + inP.r, (inP.r - (0.299 * 1.402 / 0.587) * inP.b - (0.114 * 1.772 / 0.587) * inP.g), 1.772 * inP.g + inP.r);}lowp float easeInOutSigmoid(lowp float value, lowp float strength) {if (value > 0.5) {return 1.0 - pow(2.0 - 2.0 * value, 1.0 / (1.0 - strength)) * 0.5;} else {return pow(2.0 * value, 1.0 / (1.0 - strength)) * 0.5;}}lowp vec3 applyLuminanceCurve(lowp vec3 pixel) {highp float index = floor(clamp(pixel.z / (1.0 / 200.0), 0.0, 199.0));pixel.y = mix(0.0, pixel.y, smoothstep(0.0, 0.1, pixel.z) * (1.0 - smoothstep(0.8, 1.0, pixel.z)));pixel.z = texture2D(curvesImage, vec2(1.0 / 200.0 * index, 0)).a;return pixel;}lowp vec3 applyRGBCurve(lowp vec3 pixel) {highp float index = floor(clamp(pixel.r / (1.0 / 200.0), 0.0, 199.0));pixel.r = texture2D(curvesImage, vec2(1.0 / 200.0 * index, 0)).r;index = floor(clamp(pixel.g / (1.0 / 200.0), 0.0, 199.0));pixel.g = clamp(texture2D(curvesImage, vec2(1.0 / 200.0 * index, 0)).g, 0.0, 1.0);index = floor(clamp(pixel.b / (1.0 / 200.0), 0.0, 199.0));pixel.b = clamp(texture2D(curvesImage, vec2(1.0 / 200.0 * index, 0)).b, 0.0, 1.0);return pixel;}highp vec3 fadeAdjust(highp vec3 color, highp float fadeVal) {return (color * (1.0 - fadeVal)) + ((color + (vec3(-0.9772) * pow(vec3(color), vec3(3.0)) + vec3(1.708) * pow(vec3(color), vec3(2.0)) + vec3(-0.1603) * vec3(color) + vec3(0.2878) - color * vec3(0.9))) * fadeVal);}lowp vec3 tintRaiseShadowsCurve(lowp vec3 color) {return vec3(-0.003671) * pow(color, vec3(3.0)) + vec3(0.3842) * pow(color, vec3(2.0)) + vec3(0.3764) * color + vec3(0.2515);}lowp vec3 tintShadows(lowp vec3 texel, lowp vec3 tintColor, lowp float tintAmount) {return clamp(mix(texel, mix(texel, tintRaiseShadowsCurve(texel), tintColor), tintAmount), 0.0, 1.0);} lowp vec3 tintHighlights(lowp vec3 texel, lowp vec3 tintColor, lowp float tintAmount) {return clamp(mix(texel, mix(texel, vec3(1.0) - tintRaiseShadowsCurve(vec3(1.0) - texel), (vec3(1.0) - tintColor)), tintAmount), 0.0, 1.0);}highp vec4 rnm(in highp vec2 tc) {highp float noise = sin(dot(tc, vec2(12.9898, 78.233))) * 43758.5453;return vec4(fract(noise), fract(noise * 1.2154), fract(noise * 1.3453), fract(noise * 1.3647)) * 2.0 - 1.0;}highp float fade(in highp float t) {return t * t * t * (t * (t * 6.0 - 15.0) + 10.0);}highp float pnoise3D(in highp vec3 p) {highp vec3 pi = permTexUnit * floor(p) + permTexUnitHalf;highp vec3 pf = fract(p);highp float perm = rnm(pi.xy).a;highp float n000 = dot(rnm(vec2(perm, pi.z)).rgb * 4.0 - 1.0, pf);highp float n001 = dot(rnm(vec2(perm, pi.z + permTexUnit)).rgb * 4.0 - 1.0, pf - vec3(0.0, 0.0, 1.0));perm = rnm(pi.xy + vec2(0.0, permTexUnit)).a;highp float n010 = dot(rnm(vec2(perm, pi.z)).rgb * 4.0 - 1.0, pf - vec3(0.0, 1.0, 0.0));highp float n011 = dot(rnm(vec2(perm, pi.z + permTexUnit)).rgb * 4.0 - 1.0, pf - vec3(0.0, 1.0, 1.0));perm = rnm(pi.xy + vec2(permTexUnit, 0.0)).a;highp float n100 = dot(rnm(vec2(perm, pi.z)).rgb * 4.0 - 1.0, pf - vec3(1.0, 0.0, 0.0));highp float n101 = dot(rnm(vec2(perm, pi.z + permTexUnit)).rgb * 4.0 - 1.0, pf - vec3(1.0, 0.0, 1.0));perm = rnm(pi.xy + vec2(permTexUnit, permTexUnit)).a;highp float n110 = dot(rnm(vec2(perm, pi.z)).rgb * 4.0 - 1.0, pf - vec3(1.0, 1.0, 0.0));highp float n111 = dot(rnm(vec2(perm, pi.z + permTexUnit)).rgb * 4.0 - 1.0, pf - vec3(1.0, 1.0, 1.0));highp vec4 n_x = mix(vec4(n000, n001, n010, n011), vec4(n100, n101, n110, n111), fade(pf.x));highp vec2 n_xy = mix(n_x.xy, n_x.zw, fade(pf.y));return mix(n_xy.x, n_xy.y, fade(pf.z));}lowp vec2 coordRot(in lowp vec2 tc, in lowp float angle) {return vec2(((tc.x * 2.0 - 1.0) * cos(angle) - (tc.y * 2.0 - 1.0) * sin(angle)) * 0.5 + 0.5, ((tc.y * 2.0 - 1.0) * cos(angle) + (tc.x * 2.0 - 1.0) * sin(angle)) * 0.5 + 0.5);}void main() {lowp vec4 source = texture2D(sourceImage, texCoord);lowp vec4 result = source;const lowp float toolEpsilon = 0.005;if (skipTone < toolEpsilon) {result = vec4(applyRGBCurve(hslToRgb(applyLuminanceCurve(rgbToHsl(result.rgb)))), result.a);}mediump float hsLuminance = dot(result.rgb, hsLuminanceWeighting);mediump float shadow = clamp((pow(hsLuminance, 1.0 / shadows) + (-0.76) * pow(hsLuminance, 2.0 / shadows)) - hsLuminance, 0.0, 1.0);mediump float highlight = clamp((1.0 - (pow(1.0 - hsLuminance, 1.0 / (2.0 - highlights)) + (-0.8) * pow(1.0 - hsLuminance, 2.0 / (2.0 - highlights)))) - hsLuminance, -1.0, 0.0);lowp vec3 hsresult = vec3(0.0, 0.0, 0.0) + ((hsLuminance + shadow + highlight) - 0.0) * ((result.rgb - vec3(0.0, 0.0, 0.0)) / (hsLuminance - 0.0));mediump float contrastedLuminance = ((hsLuminance - 0.5) * 1.5) + 0.5;mediump float whiteInterp = contrastedLuminance * contrastedLuminance * contrastedLuminance;mediump float whiteTarget = clamp(highlights, 1.0, 2.0) - 1.0;hsresult = mix(hsresult, vec3(1.0), whiteInterp * whiteTarget);mediump float invContrastedLuminance = 1.0 - contrastedLuminance;mediump float blackInterp = invContrastedLuminance * invContrastedLuminance * invContrastedLuminance;mediump float blackTarget = 1.0 - clamp(shadows, 0.0, 1.0);hsresult = mix(hsresult, vec3(0.0), blackInterp * blackTarget);result = vec4(hsresult.rgb, result.a);result = vec4(clamp(((result.rgb - vec3(0.5)) * contrast + vec3(0.5)), 0.0, 1.0), result.a);if (abs(fadeAmount) > toolEpsilon) {result.rgb = fadeAdjust(result.rgb, fadeAmount);}lowp float satLuminance = dot(result.rgb, satLuminanceWeighting);lowp vec3 greyScaleColor = vec3(satLuminance);result = vec4(clamp(mix(greyScaleColor, result.rgb, saturation), 0.0, 1.0), result.a);if (abs(shadowsTintIntensity) > toolEpsilon) {result.rgb = tintShadows(result.rgb, shadowsTintColor, shadowsTintIntensity * 2.0);}if (abs(highlightsTintIntensity) > toolEpsilon) {result.rgb = tintHighlights(result.rgb, highlightsTintColor, highlightsTintIntensity * 2.0);}if (abs(exposure) > toolEpsilon) {mediump float mag = exposure * 1.045;mediump float exppower = 1.0 + abs(mag);if (mag < 0.0) {exppower = 1.0 / exppower;}result.r = 1.0 - pow((1.0 - result.r), exppower);result.g = 1.0 - pow((1.0 - result.g), exppower);result.b = 1.0 - pow((1.0 - result.b), exppower);}if (abs(warmth) > toolEpsilon) {highp vec3 yuvVec;if (warmth > 0.0 ) {yuvVec = vec3(0.1765, -0.1255, 0.0902);} else {yuvVec = -vec3(0.0588, 0.1569, -0.1255);}highp vec3 yuvColor = rgbToYuv(result.rgb);highp float luma = yuvColor.r;highp float curveScale = sin(luma * 3.14159);yuvColor += 0.375 * warmth * curveScale * yuvVec;result.rgb = yuvToRgb(yuvColor);}if (abs(grain) > toolEpsilon) {highp vec3 rotOffset = vec3(1.425, 3.892, 5.835);highp vec2 rotCoordsR = coordRot(texCoord, rotOffset.x);highp vec3 noise = vec3(pnoise3D(vec3(rotCoordsR * vec2(width / grainsize, height / grainsize),0.0)));lowp vec3 lumcoeff = vec3(0.299,0.587,0.114);lowp float luminance = dot(result.rgb, lumcoeff);lowp float lum = smoothstep(0.2, 0.0, luminance);lum += luminance;noise = mix(noise,vec3(0.0),pow(lum,4.0));result.rgb = result.rgb + noise * grain;}if (abs(vignette) > toolEpsilon) {const lowp float midpoint = 0.7;const lowp float fuzziness = 0.62;lowp float radDist = length(texCoord - 0.5) / sqrt(0.5);lowp float mag = easeInOutSigmoid(radDist * midpoint, fuzziness) * vignette * 0.645;result.rgb = mix(pow(result.rgb, vec3(1.0 / (1.0 - mag))), vec3(0.0), mag * mag);}gl_FragColor = result;}"

.field private static final v1:I = 0x100

.field private static final w1:I = 0x4


# instance fields
.field private A:I

.field private A0:I

.field private B:I

.field private B0:I

.field private C:I

.field private C0:I

.field private D:I

.field private D0:I

.field private E:I

.field private E0:I

.field private F:I

.field private F0:I

.field private G:I

.field private G0:I

.field private H:I

.field private H0:I

.field private I:[I

.field private I0:I

.field private J:[I

.field private J0:I

.field private K:[I

.field private K0:I

.field private L:[I

.field private L0:I

.field private M:I

.field private M0:I

.field private N:I

.field private N0:I

.field private O:I

.field private O0:I

.field private P:I

.field private P0:[F

.field private Q:I

.field private Q0:I

.field private R:I

.field private R0:[I

.field private S:I

.field private S0:[I

.field private T:I

.field private T0:[I

.field private U:I

.field private U0:[I

.field private V:I

.field private V0:[I

.field private W:I

.field private W0:[I

.field private X:I

.field private X0:Z

.field private Y:I

.field private Y0:I

.field private Z:I

.field private Z0:I

.field public a:Ljava/nio/FloatBuffer;

.field private a0:I

.field private a1:Ljava/nio/ByteBuffer;

.field public b:Ljava/nio/FloatBuffer;

.field private b0:I

.field private b1:Ljava/nio/ByteBuffer;

.field public c:Ljava/nio/FloatBuffer;

.field private c0:I

.field private c1:Ljava/nio/ByteBuffer;

.field private d:Z

.field private d0:I

.field private d1:Lcom/rudresh/videocompression/videocompression/b$b;

.field private e:Z

.field private e0:I

.field private e1:Z

.field private f:Z

.field private f0:I

.field private g:Z

.field private g0:I

.field private h:Lcom/rudresh/videocompression/videocompression/b$a;

.field private h0:I

.field private i:F

.field private i0:I

.field private j:Lcom/rudresh/videocompression/videocompression/b$a;

.field private j0:I

.field private k:Z

.field private k0:I

.field private l:I

.field private l0:I

.field private m:I

.field private m0:I

.field private n:I

.field private n0:I

.field private o:I

.field private o0:I

.field private p:I

.field private p0:I

.field private q:Lcom/rudresh/videocompression/videocompression/b$c;

.field private q0:I

.field private r:I

.field private r0:I

.field private s:I

.field private s0:I

.field private t:I

.field private t0:I

.field private u:I

.field private u0:I

.field private v:I

.field private v0:I

.field private w:I

.field private w0:I

.field private x:I

.field private x0:I

.field private y:I

.field private y0:I

.field private z:I

.field private z0:I


# direct methods
.method public constructor <init>(Z)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/rudresh/videocompression/videocompression/b;->d:Z

    .line 3
    iput-boolean v0, p0, Lcom/rudresh/videocompression/videocompression/b;->e:Z

    const/4 v1, 0x2

    new-array v2, v1, [I

    .line 4
    iput-object v2, p0, Lcom/rudresh/videocompression/videocompression/b;->I:[I

    new-array v2, v1, [I

    .line 5
    iput-object v2, p0, Lcom/rudresh/videocompression/videocompression/b;->J:[I

    new-array v2, v1, [I

    .line 6
    iput-object v2, p0, Lcom/rudresh/videocompression/videocompression/b;->K:[I

    new-array v2, v1, [I

    .line 7
    iput-object v2, p0, Lcom/rudresh/videocompression/videocompression/b;->L:[I

    new-array v1, v1, [I

    .line 8
    iput-object v1, p0, Lcom/rudresh/videocompression/videocompression/b;->R0:[I

    new-array v1, v0, [I

    .line 9
    iput-object v1, p0, Lcom/rudresh/videocompression/videocompression/b;->S0:[I

    const/4 v1, 0x4

    new-array v1, v1, [I

    .line 10
    iput-object v1, p0, Lcom/rudresh/videocompression/videocompression/b;->T0:[I

    new-array v1, v0, [I

    .line 11
    iput-object v1, p0, Lcom/rudresh/videocompression/videocompression/b;->U0:[I

    new-array v0, v0, [I

    .line 12
    iput-object v0, p0, Lcom/rudresh/videocompression/videocompression/b;->W0:[I

    .line 13
    iput-boolean p1, p0, Lcom/rudresh/videocompression/videocompression/b;->e1:Z

    const/16 p1, 0x8

    new-array v0, p1, [F

    .line 14
    fill-array-data v0, :array_0

    const/16 v1, 0x20

    .line 15
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 16
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 17
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/rudresh/videocompression/videocompression/b;->a:Ljava/nio/FloatBuffer;

    .line 18
    invoke-virtual {v2, v0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 19
    iget-object v0, p0, Lcom/rudresh/videocompression/videocompression/b;->a:Ljava/nio/FloatBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    new-array v0, p1, [F

    .line 20
    fill-array-data v0, :array_1

    .line 21
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 22
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 23
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v3

    iput-object v3, p0, Lcom/rudresh/videocompression/videocompression/b;->c:Ljava/nio/FloatBuffer;

    .line 24
    invoke-virtual {v3, v0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 25
    iget-object v0, p0, Lcom/rudresh/videocompression/videocompression/b;->c:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    new-array p1, p1, [F

    .line 26
    fill-array-data p1, :array_2

    .line 27
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 28
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 29
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/rudresh/videocompression/videocompression/b;->b:Ljava/nio/FloatBuffer;

    .line 30
    invoke-virtual {v0, p1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 31
    iget-object p1, p0, Lcom/rudresh/videocompression/videocompression/b;->b:Ljava/nio/FloatBuffer;

    invoke-virtual {p1, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    return-void

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
    .end array-data

    :array_1
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic a(IF)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lcom/rudresh/videocompression/videocompression/b;->i(IF)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(IF)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lcom/rudresh/videocompression/videocompression/b;->u(IF)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private d(Landroid/graphics/Bitmap;IF)Landroid/graphics/Bitmap;
    .locals 7

    .line 1
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 2
    invoke-virtual {v5, p3, p3}, Landroid/graphics/Matrix;->setScale(FF)V

    int-to-float p2, p2

    .line 3
    invoke-virtual {v5, p2}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 4
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x1

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method private static i(IF)Ljava/lang/String;
    .locals 16

    mul-int/lit8 v0, p0, 0x2

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 1
    new-array v0, v0, [F

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    add-int/lit8 v5, p0, 0x1

    if-ge v4, v5, :cond_1

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    const-wide v7, 0x401921fb54442d18L    # 6.283185307179586

    move/from16 v9, p1

    float-to-double v10, v9

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    .line 2
    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    mul-double v14, v14, v7

    invoke-static {v14, v15}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    div-double/2addr v5, v7

    int-to-double v7, v4

    invoke-static {v7, v8, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    neg-double v7, v7

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    mul-double v10, v10, v12

    div-double/2addr v7, v10

    invoke-static {v7, v8}, Ljava/lang/Math;->exp(D)D

    move-result-wide v7

    mul-double v5, v5, v7

    double-to-float v5, v5

    aput v5, v0, v4

    if-nez v4, :cond_0

    .line 3
    aget v5, v0, v4

    add-float/2addr v3, v5

    goto :goto_1

    :cond_0
    float-to-double v5, v3

    .line 4
    aget v3, v0, v4

    float-to-double v7, v3

    mul-double v7, v7, v12

    add-double/2addr v5, v7

    double-to-float v3, v5

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_2
    if-ge v4, v5, :cond_2

    .line 5
    aget v6, v0, v4

    div-float/2addr v6, v3

    aput v6, v0, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 6
    :cond_2
    div-int/lit8 v3, p0, 0x2

    const/4 v4, 0x2

    rem-int/lit8 v5, p0, 0x2

    add-int/2addr v3, v5

    const/4 v5, 0x7

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 7
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "uniform sampler2D sourceImage;\n"

    .line 8
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "uniform highp float texelWidthOffset;\n"

    .line 9
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "uniform highp float texelHeightOffset;\n"

    .line 10
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v8, v1, [Ljava/lang/Object;

    mul-int/lit8 v9, v5, 0x2

    add-int/2addr v9, v1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v2

    const-string v9, "varying highp vec2 blurCoordinates[%d];\n"

    invoke-static {v7, v9, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "void main()\n"

    .line 12
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "{\n"

    .line 13
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "lowp vec4 sum = vec4(0.0);\n"

    .line 14
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v8, v1, [Ljava/lang/Object;

    .line 15
    aget v9, v0, v2

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v8, v2

    const-string v9, "sum += texture2D(sourceImage, blurCoordinates[0]) * %f;\n"

    invoke-static {v7, v9, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v7, 0x0

    :goto_3
    if-ge v7, v5, :cond_3

    mul-int/lit8 v8, v7, 0x2

    add-int/lit8 v9, v8, 0x1

    .line 16
    aget v10, v0, v9

    add-int/2addr v8, v4

    .line 17
    aget v11, v0, v8

    add-float/2addr v10, v11

    .line 18
    sget-object v11, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v12, v4, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v12, v2

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v12, v1

    const-string v9, "sum += texture2D(sourceImage, blurCoordinates[%d]) * %f;\n"

    invoke-static {v11, v9, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v12, v4, [Ljava/lang/Object;

    .line 19
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v12, v2

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v12, v1

    invoke-static {v11, v9, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_3
    if-le v3, v5, :cond_4

    const-string v7, "highp vec2 singleStepOffset = vec2(texelWidthOffset, texelHeightOffset);\n"

    .line 20
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_4
    if-ge v5, v3, :cond_4

    mul-int/lit8 v7, v5, 0x2

    add-int/lit8 v8, v7, 0x1

    .line 21
    aget v9, v0, v8

    add-int/2addr v7, v4

    .line 22
    aget v10, v0, v7

    add-float v11, v9, v10

    int-to-float v8, v8

    mul-float v9, v9, v8

    int-to-float v7, v7

    mul-float v10, v10, v7

    add-float/2addr v9, v10

    div-float/2addr v9, v11

    .line 23
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v8, v4, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v8, v2

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v8, v1

    const-string v10, "sum += texture2D(sourceImage, blurCoordinates[0] + singleStepOffset * %f) * %f;\n"

    invoke-static {v7, v10, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v8, v4, [Ljava/lang/Object;

    .line 24
    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v8, v2

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v8, v1

    const-string v9, "sum += texture2D(sourceImage, blurCoordinates[0] - singleStepOffset * %f) * %f;\n"

    invoke-static {v7, v9, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_4
    const-string v0, "gl_FragColor = sum;\n"

    .line 25
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "}\n"

    .line 26
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static q(ILjava/lang/String;)I
    .locals 2

    .line 1
    invoke-static {p0}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result p0

    .line 2
    invoke-static {p0, p1}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 3
    invoke-static {p0}, Landroid/opengl/GLES20;->glCompileShader(I)V

    const/4 p1, 0x1

    new-array p1, p1, [I

    const v0, 0x8b81

    const/4 v1, 0x0

    .line 4
    invoke-static {p0, v0, p1, v1}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    aget p1, p1, v1

    if-nez p1, :cond_0

    .line 5
    invoke-static {p0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    const/4 p0, 0x0

    :cond_0
    return p0
.end method

.method private static u(IF)Ljava/lang/String;
    .locals 16

    mul-int/lit8 v0, p0, 0x2

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 1
    new-array v0, v0, [F

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    add-int/lit8 v5, p0, 0x1

    if-ge v4, v5, :cond_1

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    const-wide v7, 0x401921fb54442d18L    # 6.283185307179586

    move/from16 v9, p1

    float-to-double v10, v9

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    .line 2
    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    mul-double v14, v14, v7

    invoke-static {v14, v15}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    div-double/2addr v5, v7

    int-to-double v7, v4

    invoke-static {v7, v8, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    neg-double v7, v7

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    mul-double v10, v10, v12

    div-double/2addr v7, v10

    invoke-static {v7, v8}, Ljava/lang/Math;->exp(D)D

    move-result-wide v7

    mul-double v5, v5, v7

    double-to-float v5, v5

    aput v5, v0, v4

    if-nez v4, :cond_0

    .line 3
    aget v5, v0, v4

    add-float/2addr v3, v5

    goto :goto_1

    :cond_0
    float-to-double v5, v3

    .line 4
    aget v3, v0, v4

    float-to-double v7, v3

    mul-double v7, v7, v12

    add-double/2addr v5, v7

    double-to-float v3, v5

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_2
    if-ge v4, v5, :cond_2

    .line 5
    aget v6, v0, v4

    div-float/2addr v6, v3

    aput v6, v0, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 6
    :cond_2
    div-int/lit8 v3, p0, 0x2

    const/4 v4, 0x2

    rem-int/lit8 v5, p0, 0x2

    add-int/2addr v3, v5

    const/4 v5, 0x7

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 7
    new-array v5, v3, [F

    const/4 v6, 0x0

    :goto_3
    if-ge v6, v3, :cond_3

    mul-int/lit8 v7, v6, 0x2

    add-int/lit8 v8, v7, 0x1

    .line 8
    aget v9, v0, v8

    add-int/2addr v7, v4

    .line 9
    aget v10, v0, v7

    add-float v11, v9, v10

    int-to-float v8, v8

    mul-float v9, v9, v8

    int-to-float v7, v7

    mul-float v10, v10, v7

    add-float/2addr v9, v10

    div-float/2addr v9, v11

    .line 10
    aput v9, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 11
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "attribute vec4 position;\n"

    .line 12
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "attribute vec4 inputTexCoord;\n"

    .line 13
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "uniform float texelWidthOffset;\n"

    .line 14
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "uniform float texelHeightOffset;\n"

    .line 15
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v7, v1, [Ljava/lang/Object;

    mul-int/lit8 v8, v3, 0x2

    add-int/2addr v8, v1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v2

    const-string v8, "varying vec2 blurCoordinates[%d];\n"

    invoke-static {v6, v8, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "void main()\n"

    .line 17
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "{\n"

    .line 18
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "gl_Position = position;\n"

    .line 19
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "vec2 singleStepOffset = vec2(texelWidthOffset, texelHeightOffset);\n"

    .line 20
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "blurCoordinates[0] = inputTexCoord.xy;\n"

    .line 21
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x0

    :goto_4
    if-ge v6, v3, :cond_4

    .line 22
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    mul-int/lit8 v9, v6, 0x2

    add-int/lit8 v10, v9, 0x1

    .line 23
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v2

    aget v10, v5, v6

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v8, v1

    add-int/2addr v9, v4

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v4

    const/4 v9, 0x3

    aget v10, v5, v6

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v8, v9

    const-string v9, "blurCoordinates[%d] = inputTexCoord.xy + singleStepOffset * %f;\nblurCoordinates[%d] = inputTexCoord.xy - singleStepOffset * %f;\n"

    .line 24
    invoke-static {v7, v9, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_4
    const-string v1, "}"

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public c()Z
    .locals 19

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/rudresh/videocompression/videocompression/b;->W0:[I

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 2
    iget-object v1, v0, Lcom/rudresh/videocompression/videocompression/b;->R0:[I

    const/4 v4, 0x2

    invoke-static {v4, v1, v3}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 3
    iget-object v1, v0, Lcom/rudresh/videocompression/videocompression/b;->S0:[I

    invoke-static {v2, v1, v3}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    .line 4
    iget-object v1, v0, Lcom/rudresh/videocompression/videocompression/b;->R0:[I

    aget v1, v1, v2

    const/16 v5, 0xde1

    invoke-static {v5, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v1, 0x2801

    const/16 v6, 0x2601

    .line 5
    invoke-static {v5, v1, v6}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v7, 0x2800

    .line 6
    invoke-static {v5, v7, v6}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v8, 0x2802

    const v9, 0x812f

    .line 7
    invoke-static {v5, v8, v9}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v10, 0x2803

    .line 8
    invoke-static {v5, v10, v9}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 9
    iget-object v11, v0, Lcom/rudresh/videocompression/videocompression/b;->W0:[I

    aget v11, v11, v3

    invoke-static {v5, v11}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 10
    invoke-static {v5, v1, v6}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 11
    invoke-static {v5, v7, v6}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 12
    invoke-static {v5, v8, v9}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 13
    invoke-static {v5, v10, v9}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    new-array v1, v2, [I

    const v5, 0x8b31

    const-string v6, "attribute vec4 position;attribute vec2 inputTexCoord;varying vec2 texCoord;void main() {gl_Position = position;texCoord = inputTexCoord;}"

    .line 14
    invoke-static {v5, v6}, Lcom/rudresh/videocompression/videocompression/b;->q(ILjava/lang/String;)I

    move-result v7

    const v8, 0x8b30

    const-string v9, "varying highp vec2 texCoord;uniform sampler2D sourceImage;uniform highp float width;uniform highp float height;uniform sampler2D curvesImage;uniform lowp float skipTone;uniform lowp float shadows;const mediump vec3 hsLuminanceWeighting = vec3(0.3, 0.3, 0.3);uniform lowp float highlights;uniform lowp float contrast;uniform lowp float fadeAmount;const mediump vec3 satLuminanceWeighting = vec3(0.2126, 0.7152, 0.0722);uniform lowp float saturation;uniform lowp float shadowsTintIntensity;uniform lowp float highlightsTintIntensity;uniform lowp vec3 shadowsTintColor;uniform lowp vec3 highlightsTintColor;uniform lowp float exposure;uniform lowp float warmth;uniform lowp float grain;const lowp float permTexUnit = 1.0 / 256.0;const lowp float permTexUnitHalf = 0.5 / 256.0;const lowp float grainsize = 2.3;uniform lowp float vignette;highp float getLuma(highp vec3 rgbP) {return (0.299 * rgbP.r) + (0.587 * rgbP.g) + (0.114 * rgbP.b);}lowp vec3 rgbToHsv(lowp vec3 c) {highp vec4 K = vec4(0.0, -1.0 / 3.0, 2.0 / 3.0, -1.0);highp vec4 p = c.g < c.b ? vec4(c.bg, K.wz) : vec4(c.gb, K.xy);highp vec4 q = c.r < p.x ? vec4(p.xyw, c.r) : vec4(c.r, p.yzx);highp float d = q.x - min(q.w, q.y);highp float e = 1.0e-10;return vec3(abs(q.z + (q.w - q.y) / (6.0 * d + e)), d / (q.x + e), q.x);}lowp vec3 hsvToRgb(lowp vec3 c) {highp vec4 K = vec4(1.0, 2.0 / 3.0, 1.0 / 3.0, 3.0);highp vec3 p = abs(fract(c.xxx + K.xyz) * 6.0 - K.www);return c.z * mix(K.xxx, clamp(p - K.xxx, 0.0, 1.0), c.y);}highp vec3 rgbToHsl(highp vec3 color) {highp vec3 hsl;highp float fmin = min(min(color.r, color.g), color.b);highp float fmax = max(max(color.r, color.g), color.b);highp float delta = fmax - fmin;hsl.z = (fmax + fmin) / 2.0;if (delta == 0.0) {hsl.x = 0.0;hsl.y = 0.0;} else {if (hsl.z < 0.5) {hsl.y = delta / (fmax + fmin);} else {hsl.y = delta / (2.0 - fmax - fmin);}highp float deltaR = (((fmax - color.r) / 6.0) + (delta / 2.0)) / delta;highp float deltaG = (((fmax - color.g) / 6.0) + (delta / 2.0)) / delta;highp float deltaB = (((fmax - color.b) / 6.0) + (delta / 2.0)) / delta;if (color.r == fmax) {hsl.x = deltaB - deltaG;} else if (color.g == fmax) {hsl.x = (1.0 / 3.0) + deltaR - deltaB;} else if (color.b == fmax) {hsl.x = (2.0 / 3.0) + deltaG - deltaR;}if (hsl.x < 0.0) {hsl.x += 1.0;} else if (hsl.x > 1.0) {hsl.x -= 1.0;}}return hsl;}highp float hueToRgb(highp float f1, highp float f2, highp float hue) {if (hue < 0.0) {hue += 1.0;} else if (hue > 1.0) {hue -= 1.0;}highp float res;if ((6.0 * hue) < 1.0) {res = f1 + (f2 - f1) * 6.0 * hue;} else if ((2.0 * hue) < 1.0) {res = f2;} else if ((3.0 * hue) < 2.0) {res = f1 + (f2 - f1) * ((2.0 / 3.0) - hue) * 6.0;} else {res = f1;}return res;}highp vec3 hslToRgb(highp vec3 hsl) {if (hsl.y == 0.0) {return vec3(hsl.z);} else {highp float f2;if (hsl.z < 0.5) {f2 = hsl.z * (1.0 + hsl.y);} else {f2 = (hsl.z + hsl.y) - (hsl.y * hsl.z);}highp float f1 = 2.0 * hsl.z - f2;return vec3(hueToRgb(f1, f2, hsl.x + (1.0/3.0)), hueToRgb(f1, f2, hsl.x), hueToRgb(f1, f2, hsl.x - (1.0/3.0)));}}highp vec3 rgbToYuv(highp vec3 inP) {highp float luma = getLuma(inP);return vec3(luma, (1.0 / 1.772) * (inP.b - luma), (1.0 / 1.402) * (inP.r - luma));}lowp vec3 yuvToRgb(highp vec3 inP) {return vec3(1.402 * inP.b + inP.r, (inP.r - (0.299 * 1.402 / 0.587) * inP.b - (0.114 * 1.772 / 0.587) * inP.g), 1.772 * inP.g + inP.r);}lowp float easeInOutSigmoid(lowp float value, lowp float strength) {if (value > 0.5) {return 1.0 - pow(2.0 - 2.0 * value, 1.0 / (1.0 - strength)) * 0.5;} else {return pow(2.0 * value, 1.0 / (1.0 - strength)) * 0.5;}}lowp vec3 applyLuminanceCurve(lowp vec3 pixel) {highp float index = floor(clamp(pixel.z / (1.0 / 200.0), 0.0, 199.0));pixel.y = mix(0.0, pixel.y, smoothstep(0.0, 0.1, pixel.z) * (1.0 - smoothstep(0.8, 1.0, pixel.z)));pixel.z = texture2D(curvesImage, vec2(1.0 / 200.0 * index, 0)).a;return pixel;}lowp vec3 applyRGBCurve(lowp vec3 pixel) {highp float index = floor(clamp(pixel.r / (1.0 / 200.0), 0.0, 199.0));pixel.r = texture2D(curvesImage, vec2(1.0 / 200.0 * index, 0)).r;index = floor(clamp(pixel.g / (1.0 / 200.0), 0.0, 199.0));pixel.g = clamp(texture2D(curvesImage, vec2(1.0 / 200.0 * index, 0)).g, 0.0, 1.0);index = floor(clamp(pixel.b / (1.0 / 200.0), 0.0, 199.0));pixel.b = clamp(texture2D(curvesImage, vec2(1.0 / 200.0 * index, 0)).b, 0.0, 1.0);return pixel;}highp vec3 fadeAdjust(highp vec3 color, highp float fadeVal) {return (color * (1.0 - fadeVal)) + ((color + (vec3(-0.9772) * pow(vec3(color), vec3(3.0)) + vec3(1.708) * pow(vec3(color), vec3(2.0)) + vec3(-0.1603) * vec3(color) + vec3(0.2878) - color * vec3(0.9))) * fadeVal);}lowp vec3 tintRaiseShadowsCurve(lowp vec3 color) {return vec3(-0.003671) * pow(color, vec3(3.0)) + vec3(0.3842) * pow(color, vec3(2.0)) + vec3(0.3764) * color + vec3(0.2515);}lowp vec3 tintShadows(lowp vec3 texel, lowp vec3 tintColor, lowp float tintAmount) {return clamp(mix(texel, mix(texel, tintRaiseShadowsCurve(texel), tintColor), tintAmount), 0.0, 1.0);} lowp vec3 tintHighlights(lowp vec3 texel, lowp vec3 tintColor, lowp float tintAmount) {return clamp(mix(texel, mix(texel, vec3(1.0) - tintRaiseShadowsCurve(vec3(1.0) - texel), (vec3(1.0) - tintColor)), tintAmount), 0.0, 1.0);}highp vec4 rnm(in highp vec2 tc) {highp float noise = sin(dot(tc, vec2(12.9898, 78.233))) * 43758.5453;return vec4(fract(noise), fract(noise * 1.2154), fract(noise * 1.3453), fract(noise * 1.3647)) * 2.0 - 1.0;}highp float fade(in highp float t) {return t * t * t * (t * (t * 6.0 - 15.0) + 10.0);}highp float pnoise3D(in highp vec3 p) {highp vec3 pi = permTexUnit * floor(p) + permTexUnitHalf;highp vec3 pf = fract(p);highp float perm = rnm(pi.xy).a;highp float n000 = dot(rnm(vec2(perm, pi.z)).rgb * 4.0 - 1.0, pf);highp float n001 = dot(rnm(vec2(perm, pi.z + permTexUnit)).rgb * 4.0 - 1.0, pf - vec3(0.0, 0.0, 1.0));perm = rnm(pi.xy + vec2(0.0, permTexUnit)).a;highp float n010 = dot(rnm(vec2(perm, pi.z)).rgb * 4.0 - 1.0, pf - vec3(0.0, 1.0, 0.0));highp float n011 = dot(rnm(vec2(perm, pi.z + permTexUnit)).rgb * 4.0 - 1.0, pf - vec3(0.0, 1.0, 1.0));perm = rnm(pi.xy + vec2(permTexUnit, 0.0)).a;highp float n100 = dot(rnm(vec2(perm, pi.z)).rgb * 4.0 - 1.0, pf - vec3(1.0, 0.0, 0.0));highp float n101 = dot(rnm(vec2(perm, pi.z + permTexUnit)).rgb * 4.0 - 1.0, pf - vec3(1.0, 0.0, 1.0));perm = rnm(pi.xy + vec2(permTexUnit, permTexUnit)).a;highp float n110 = dot(rnm(vec2(perm, pi.z)).rgb * 4.0 - 1.0, pf - vec3(1.0, 1.0, 0.0));highp float n111 = dot(rnm(vec2(perm, pi.z + permTexUnit)).rgb * 4.0 - 1.0, pf - vec3(1.0, 1.0, 1.0));highp vec4 n_x = mix(vec4(n000, n001, n010, n011), vec4(n100, n101, n110, n111), fade(pf.x));highp vec2 n_xy = mix(n_x.xy, n_x.zw, fade(pf.y));return mix(n_xy.x, n_xy.y, fade(pf.z));}lowp vec2 coordRot(in lowp vec2 tc, in lowp float angle) {return vec2(((tc.x * 2.0 - 1.0) * cos(angle) - (tc.y * 2.0 - 1.0) * sin(angle)) * 0.5 + 0.5, ((tc.y * 2.0 - 1.0) * cos(angle) + (tc.x * 2.0 - 1.0) * sin(angle)) * 0.5 + 0.5);}void main() {lowp vec4 source = texture2D(sourceImage, texCoord);lowp vec4 result = source;const lowp float toolEpsilon = 0.005;if (skipTone < toolEpsilon) {result = vec4(applyRGBCurve(hslToRgb(applyLuminanceCurve(rgbToHsl(result.rgb)))), result.a);}mediump float hsLuminance = dot(result.rgb, hsLuminanceWeighting);mediump float shadow = clamp((pow(hsLuminance, 1.0 / shadows) + (-0.76) * pow(hsLuminance, 2.0 / shadows)) - hsLuminance, 0.0, 1.0);mediump float highlight = clamp((1.0 - (pow(1.0 - hsLuminance, 1.0 / (2.0 - highlights)) + (-0.8) * pow(1.0 - hsLuminance, 2.0 / (2.0 - highlights)))) - hsLuminance, -1.0, 0.0);lowp vec3 hsresult = vec3(0.0, 0.0, 0.0) + ((hsLuminance + shadow + highlight) - 0.0) * ((result.rgb - vec3(0.0, 0.0, 0.0)) / (hsLuminance - 0.0));mediump float contrastedLuminance = ((hsLuminance - 0.5) * 1.5) + 0.5;mediump float whiteInterp = contrastedLuminance * contrastedLuminance * contrastedLuminance;mediump float whiteTarget = clamp(highlights, 1.0, 2.0) - 1.0;hsresult = mix(hsresult, vec3(1.0), whiteInterp * whiteTarget);mediump float invContrastedLuminance = 1.0 - contrastedLuminance;mediump float blackInterp = invContrastedLuminance * invContrastedLuminance * invContrastedLuminance;mediump float blackTarget = 1.0 - clamp(shadows, 0.0, 1.0);hsresult = mix(hsresult, vec3(0.0), blackInterp * blackTarget);result = vec4(hsresult.rgb, result.a);result = vec4(clamp(((result.rgb - vec3(0.5)) * contrast + vec3(0.5)), 0.0, 1.0), result.a);if (abs(fadeAmount) > toolEpsilon) {result.rgb = fadeAdjust(result.rgb, fadeAmount);}lowp float satLuminance = dot(result.rgb, satLuminanceWeighting);lowp vec3 greyScaleColor = vec3(satLuminance);result = vec4(clamp(mix(greyScaleColor, result.rgb, saturation), 0.0, 1.0), result.a);if (abs(shadowsTintIntensity) > toolEpsilon) {result.rgb = tintShadows(result.rgb, shadowsTintColor, shadowsTintIntensity * 2.0);}if (abs(highlightsTintIntensity) > toolEpsilon) {result.rgb = tintHighlights(result.rgb, highlightsTintColor, highlightsTintIntensity * 2.0);}if (abs(exposure) > toolEpsilon) {mediump float mag = exposure * 1.045;mediump float exppower = 1.0 + abs(mag);if (mag < 0.0) {exppower = 1.0 / exppower;}result.r = 1.0 - pow((1.0 - result.r), exppower);result.g = 1.0 - pow((1.0 - result.g), exppower);result.b = 1.0 - pow((1.0 - result.b), exppower);}if (abs(warmth) > toolEpsilon) {highp vec3 yuvVec;if (warmth > 0.0 ) {yuvVec = vec3(0.1765, -0.1255, 0.0902);} else {yuvVec = -vec3(0.0588, 0.1569, -0.1255);}highp vec3 yuvColor = rgbToYuv(result.rgb);highp float luma = yuvColor.r;highp float curveScale = sin(luma * 3.14159);yuvColor += 0.375 * warmth * curveScale * yuvVec;result.rgb = yuvToRgb(yuvColor);}if (abs(grain) > toolEpsilon) {highp vec3 rotOffset = vec3(1.425, 3.892, 5.835);highp vec2 rotCoordsR = coordRot(texCoord, rotOffset.x);highp vec3 noise = vec3(pnoise3D(vec3(rotCoordsR * vec2(width / grainsize, height / grainsize),0.0)));lowp vec3 lumcoeff = vec3(0.299,0.587,0.114);lowp float luminance = dot(result.rgb, lumcoeff);lowp float lum = smoothstep(0.2, 0.0, luminance);lum += luminance;noise = mix(noise,vec3(0.0),pow(lum,4.0));result.rgb = result.rgb + noise * grain;}if (abs(vignette) > toolEpsilon) {const lowp float midpoint = 0.7;const lowp float fuzziness = 0.62;lowp float radDist = length(texCoord - 0.5) / sqrt(0.5);lowp float mag = easeInOutSigmoid(radDist * midpoint, fuzziness) * vignette * 0.645;result.rgb = mix(pow(result.rgb, vec3(1.0 / (1.0 - mag))), vec3(0.0), mag * mag);}gl_FragColor = result;}"

    .line 15
    invoke-static {v8, v9}, Lcom/rudresh/videocompression/videocompression/b;->q(ILjava/lang/String;)I

    move-result v9

    if-eqz v7, :cond_1e

    if-eqz v9, :cond_1e

    .line 16
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v10

    iput v10, v0, Lcom/rudresh/videocompression/videocompression/b;->T:I

    .line 17
    invoke-static {v10, v7}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 18
    iget v7, v0, Lcom/rudresh/videocompression/videocompression/b;->T:I

    invoke-static {v7, v9}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 19
    iget v7, v0, Lcom/rudresh/videocompression/videocompression/b;->T:I

    const-string v9, "position"

    invoke-static {v7, v3, v9}, Landroid/opengl/GLES20;->glBindAttribLocation(IILjava/lang/String;)V

    .line 20
    iget v7, v0, Lcom/rudresh/videocompression/videocompression/b;->T:I

    const-string v10, "inputTexCoord"

    invoke-static {v7, v2, v10}, Landroid/opengl/GLES20;->glBindAttribLocation(IILjava/lang/String;)V

    .line 21
    iget v7, v0, Lcom/rudresh/videocompression/videocompression/b;->T:I

    invoke-static {v7}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 22
    iget v7, v0, Lcom/rudresh/videocompression/videocompression/b;->T:I

    const v11, 0x8b82

    invoke-static {v7, v11, v1, v3}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    aget v7, v1, v3

    const-string v12, "sourceImage"

    if-nez v7, :cond_0

    .line 23
    iget v7, v0, Lcom/rudresh/videocompression/videocompression/b;->T:I

    invoke-static {v7}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 24
    iput v3, v0, Lcom/rudresh/videocompression/videocompression/b;->T:I

    goto/16 :goto_0

    .line 25
    :cond_0
    iget v7, v0, Lcom/rudresh/videocompression/videocompression/b;->T:I

    invoke-static {v7, v9}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v7

    iput v7, v0, Lcom/rudresh/videocompression/videocompression/b;->U:I

    .line 26
    iget v7, v0, Lcom/rudresh/videocompression/videocompression/b;->T:I

    invoke-static {v7, v10}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v7

    iput v7, v0, Lcom/rudresh/videocompression/videocompression/b;->V:I

    .line 27
    iget v7, v0, Lcom/rudresh/videocompression/videocompression/b;->T:I

    invoke-static {v7, v12}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v7

    iput v7, v0, Lcom/rudresh/videocompression/videocompression/b;->W:I

    .line 28
    iget v7, v0, Lcom/rudresh/videocompression/videocompression/b;->T:I

    const-string v13, "shadows"

    invoke-static {v7, v13}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v7

    iput v7, v0, Lcom/rudresh/videocompression/videocompression/b;->X:I

    .line 29
    iget v7, v0, Lcom/rudresh/videocompression/videocompression/b;->T:I

    const-string v13, "highlights"

    invoke-static {v7, v13}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v7

    iput v7, v0, Lcom/rudresh/videocompression/videocompression/b;->Y:I

    .line 30
    iget v7, v0, Lcom/rudresh/videocompression/videocompression/b;->T:I

    const-string v13, "exposure"

    invoke-static {v7, v13}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v7

    iput v7, v0, Lcom/rudresh/videocompression/videocompression/b;->Z:I

    .line 31
    iget v7, v0, Lcom/rudresh/videocompression/videocompression/b;->T:I

    const-string v13, "contrast"

    invoke-static {v7, v13}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v7

    iput v7, v0, Lcom/rudresh/videocompression/videocompression/b;->a0:I

    .line 32
    iget v7, v0, Lcom/rudresh/videocompression/videocompression/b;->T:I

    const-string v13, "saturation"

    invoke-static {v7, v13}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v7

    iput v7, v0, Lcom/rudresh/videocompression/videocompression/b;->b0:I

    .line 33
    iget v7, v0, Lcom/rudresh/videocompression/videocompression/b;->T:I

    const-string v13, "warmth"

    invoke-static {v7, v13}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v7

    iput v7, v0, Lcom/rudresh/videocompression/videocompression/b;->c0:I

    .line 34
    iget v7, v0, Lcom/rudresh/videocompression/videocompression/b;->T:I

    const-string v13, "vignette"

    invoke-static {v7, v13}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v7

    iput v7, v0, Lcom/rudresh/videocompression/videocompression/b;->d0:I

    .line 35
    iget v7, v0, Lcom/rudresh/videocompression/videocompression/b;->T:I

    const-string v13, "grain"

    invoke-static {v7, v13}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v7

    iput v7, v0, Lcom/rudresh/videocompression/videocompression/b;->e0:I

    .line 36
    iget v7, v0, Lcom/rudresh/videocompression/videocompression/b;->T:I

    const-string v13, "width"

    invoke-static {v7, v13}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v7

    iput v7, v0, Lcom/rudresh/videocompression/videocompression/b;->f0:I

    .line 37
    iget v7, v0, Lcom/rudresh/videocompression/videocompression/b;->T:I

    const-string v13, "height"

    invoke-static {v7, v13}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v7

    iput v7, v0, Lcom/rudresh/videocompression/videocompression/b;->g0:I

    .line 38
    iget v7, v0, Lcom/rudresh/videocompression/videocompression/b;->T:I

    const-string v13, "curvesImage"

    invoke-static {v7, v13}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v7

    iput v7, v0, Lcom/rudresh/videocompression/videocompression/b;->h0:I

    .line 39
    iget v7, v0, Lcom/rudresh/videocompression/videocompression/b;->T:I

    const-string v13, "skipTone"

    invoke-static {v7, v13}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v7

    iput v7, v0, Lcom/rudresh/videocompression/videocompression/b;->i0:I

    .line 40
    iget v7, v0, Lcom/rudresh/videocompression/videocompression/b;->T:I

    const-string v13, "fadeAmount"

    invoke-static {v7, v13}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v7

    iput v7, v0, Lcom/rudresh/videocompression/videocompression/b;->j0:I

    .line 41
    iget v7, v0, Lcom/rudresh/videocompression/videocompression/b;->T:I

    const-string v13, "shadowsTintIntensity"

    invoke-static {v7, v13}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v7

    iput v7, v0, Lcom/rudresh/videocompression/videocompression/b;->k0:I

    .line 42
    iget v7, v0, Lcom/rudresh/videocompression/videocompression/b;->T:I

    const-string v13, "highlightsTintIntensity"

    invoke-static {v7, v13}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v7

    iput v7, v0, Lcom/rudresh/videocompression/videocompression/b;->l0:I

    .line 43
    iget v7, v0, Lcom/rudresh/videocompression/videocompression/b;->T:I

    const-string v13, "shadowsTintColor"

    invoke-static {v7, v13}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v7

    iput v7, v0, Lcom/rudresh/videocompression/videocompression/b;->m0:I

    .line 44
    iget v7, v0, Lcom/rudresh/videocompression/videocompression/b;->T:I

    const-string v13, "highlightsTintColor"

    invoke-static {v7, v13}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v7

    iput v7, v0, Lcom/rudresh/videocompression/videocompression/b;->n0:I

    :goto_0
    const-string v7, "attribute vec4 position;attribute vec2 inputTexCoord;varying vec2 texCoord;uniform highp float inputWidth;uniform highp float inputHeight;varying vec2 leftTexCoord;varying vec2 rightTexCoord;varying vec2 topTexCoord;varying vec2 bottomTexCoord;void main() {gl_Position = position;texCoord = inputTexCoord;highp vec2 widthStep = vec2(1.0 / inputWidth, 0.0);highp vec2 heightStep = vec2(0.0, 1.0 / inputHeight);leftTexCoord = inputTexCoord - widthStep;rightTexCoord = inputTexCoord + widthStep;topTexCoord = inputTexCoord + heightStep;bottomTexCoord = inputTexCoord - heightStep;}"

    .line 45
    invoke-static {v5, v7}, Lcom/rudresh/videocompression/videocompression/b;->q(ILjava/lang/String;)I

    move-result v7

    const-string v13, "precision highp float;varying vec2 texCoord;varying vec2 leftTexCoord;varying vec2 rightTexCoord;varying vec2 topTexCoord;varying vec2 bottomTexCoord;uniform sampler2D sourceImage;uniform float sharpen;void main() {vec4 result = texture2D(sourceImage, texCoord);vec3 leftTextureColor = texture2D(sourceImage, leftTexCoord).rgb;vec3 rightTextureColor = texture2D(sourceImage, rightTexCoord).rgb;vec3 topTextureColor = texture2D(sourceImage, topTexCoord).rgb;vec3 bottomTextureColor = texture2D(sourceImage, bottomTexCoord).rgb;result.rgb = result.rgb * (1.0 + 4.0 * sharpen) - (leftTextureColor + rightTextureColor + topTextureColor + bottomTextureColor) * sharpen;gl_FragColor = result;}"

    .line 46
    invoke-static {v8, v13}, Lcom/rudresh/videocompression/videocompression/b;->q(ILjava/lang/String;)I

    move-result v13

    if-eqz v7, :cond_1d

    if-eqz v13, :cond_1d

    .line 47
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v14

    iput v14, v0, Lcom/rudresh/videocompression/videocompression/b;->H0:I

    .line 48
    invoke-static {v14, v7}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 49
    iget v7, v0, Lcom/rudresh/videocompression/videocompression/b;->H0:I

    invoke-static {v7, v13}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 50
    iget v7, v0, Lcom/rudresh/videocompression/videocompression/b;->H0:I

    invoke-static {v7, v3, v9}, Landroid/opengl/GLES20;->glBindAttribLocation(IILjava/lang/String;)V

    .line 51
    iget v7, v0, Lcom/rudresh/videocompression/videocompression/b;->H0:I

    invoke-static {v7, v2, v10}, Landroid/opengl/GLES20;->glBindAttribLocation(IILjava/lang/String;)V

    .line 52
    iget v7, v0, Lcom/rudresh/videocompression/videocompression/b;->H0:I

    invoke-static {v7}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 53
    iget v7, v0, Lcom/rudresh/videocompression/videocompression/b;->H0:I

    invoke-static {v7, v11, v1, v3}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    aget v7, v1, v3

    if-nez v7, :cond_1

    .line 54
    iget v7, v0, Lcom/rudresh/videocompression/videocompression/b;->H0:I

    invoke-static {v7}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 55
    iput v3, v0, Lcom/rudresh/videocompression/videocompression/b;->H0:I

    goto :goto_1

    .line 56
    :cond_1
    iget v7, v0, Lcom/rudresh/videocompression/videocompression/b;->H0:I

    invoke-static {v7, v9}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v7

    iput v7, v0, Lcom/rudresh/videocompression/videocompression/b;->L0:I

    .line 57
    iget v7, v0, Lcom/rudresh/videocompression/videocompression/b;->H0:I

    invoke-static {v7, v10}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v7

    iput v7, v0, Lcom/rudresh/videocompression/videocompression/b;->M0:I

    .line 58
    iget v7, v0, Lcom/rudresh/videocompression/videocompression/b;->H0:I

    invoke-static {v7, v12}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v7

    iput v7, v0, Lcom/rudresh/videocompression/videocompression/b;->N0:I

    .line 59
    iget v7, v0, Lcom/rudresh/videocompression/videocompression/b;->H0:I

    const-string v13, "inputWidth"

    invoke-static {v7, v13}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v7

    iput v7, v0, Lcom/rudresh/videocompression/videocompression/b;->J0:I

    .line 60
    iget v7, v0, Lcom/rudresh/videocompression/videocompression/b;->H0:I

    const-string v13, "inputHeight"

    invoke-static {v7, v13}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v7

    iput v7, v0, Lcom/rudresh/videocompression/videocompression/b;->K0:I

    .line 61
    iget v7, v0, Lcom/rudresh/videocompression/videocompression/b;->H0:I

    const-string v13, "sharpen"

    invoke-static {v7, v13}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v7

    iput v7, v0, Lcom/rudresh/videocompression/videocompression/b;->I0:I

    .line 62
    :goto_1
    new-instance v7, Lcom/rudresh/videocompression/videocompression/b$a;

    const/high16 v13, 0x41000000    # 8.0f

    const/high16 v14, 0x40400000    # 3.0f

    invoke-direct {v7, v13, v14, v3}, Lcom/rudresh/videocompression/videocompression/b$a;-><init>(FFZ)V

    iput-object v7, v0, Lcom/rudresh/videocompression/videocompression/b;->j:Lcom/rudresh/videocompression/videocompression/b$a;

    .line 63
    invoke-virtual {v7}, Lcom/rudresh/videocompression/videocompression/b$a;->a()Z

    move-result v7

    if-nez v7, :cond_2

    return v3

    .line 64
    :cond_2
    iget-boolean v7, v0, Lcom/rudresh/videocompression/videocompression/b;->e1:Z

    const-string v13, ""

    if-eqz v7, :cond_3

    const-string v14, "#extension GL_OES_EGL_image_external : require"

    goto :goto_2

    :cond_3
    move-object v14, v13

    :goto_2
    const-string v15, "sampler2D"

    if-eqz v7, :cond_4

    const-string v7, "samplerExternalOES"

    goto :goto_3

    :cond_4
    move-object v7, v15

    .line 65
    :goto_3
    invoke-static {v5, v6}, Lcom/rudresh/videocompression/videocompression/b;->q(ILjava/lang/String;)I

    move-result v4

    const-string v5, "varying highp vec2 texCoord;uniform sampler2D sourceImage;uniform sampler2D inputImageTexture2;uniform lowp float excludeSize;uniform lowp vec2 excludePoint;uniform lowp float excludeBlurSize;uniform highp float angle;uniform highp float aspectRatio;void main() {lowp vec4 sharpImageColor = texture2D(sourceImage, texCoord);lowp vec4 blurredImageColor = texture2D(inputImageTexture2, texCoord);highp vec2 texCoordToUse = vec2(texCoord.x, (texCoord.y * aspectRatio + 0.5 - 0.5 * aspectRatio));highp float distanceFromCenter = abs((texCoordToUse.x - excludePoint.x) * aspectRatio * cos(angle) + (texCoordToUse.y - excludePoint.y) * sin(angle));gl_FragColor = mix(sharpImageColor, blurredImageColor, smoothstep(excludeSize - excludeBlurSize, excludeSize, distanceFromCenter));}"

    .line 66
    invoke-static {v8, v5}, Lcom/rudresh/videocompression/videocompression/b;->q(ILjava/lang/String;)I

    move-result v5

    if-eqz v4, :cond_1c

    if-eqz v5, :cond_1c

    .line 67
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v8

    iput v8, v0, Lcom/rudresh/videocompression/videocompression/b;->o0:I

    .line 68
    invoke-static {v8, v4}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 69
    iget v4, v0, Lcom/rudresh/videocompression/videocompression/b;->o0:I

    invoke-static {v4, v5}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 70
    iget v4, v0, Lcom/rudresh/videocompression/videocompression/b;->o0:I

    invoke-static {v4, v3, v9}, Landroid/opengl/GLES20;->glBindAttribLocation(IILjava/lang/String;)V

    .line 71
    iget v4, v0, Lcom/rudresh/videocompression/videocompression/b;->o0:I

    invoke-static {v4, v2, v10}, Landroid/opengl/GLES20;->glBindAttribLocation(IILjava/lang/String;)V

    .line 72
    iget v4, v0, Lcom/rudresh/videocompression/videocompression/b;->o0:I

    invoke-static {v4}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 73
    iget v4, v0, Lcom/rudresh/videocompression/videocompression/b;->o0:I

    invoke-static {v4, v11, v1, v3}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    aget v4, v1, v3

    const-string v5, "excludeSize"

    const-string v8, "inputImageTexture2"

    if-nez v4, :cond_5

    .line 74
    iget v4, v0, Lcom/rudresh/videocompression/videocompression/b;->o0:I

    invoke-static {v4}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 75
    iput v3, v0, Lcom/rudresh/videocompression/videocompression/b;->o0:I

    goto :goto_4

    .line 76
    :cond_5
    iget v4, v0, Lcom/rudresh/videocompression/videocompression/b;->o0:I

    invoke-static {v4, v9}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v4

    iput v4, v0, Lcom/rudresh/videocompression/videocompression/b;->p0:I

    .line 77
    iget v4, v0, Lcom/rudresh/videocompression/videocompression/b;->o0:I

    invoke-static {v4, v10}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v4

    iput v4, v0, Lcom/rudresh/videocompression/videocompression/b;->q0:I

    .line 78
    iget v4, v0, Lcom/rudresh/videocompression/videocompression/b;->o0:I

    invoke-static {v4, v12}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v4

    iput v4, v0, Lcom/rudresh/videocompression/videocompression/b;->r0:I

    .line 79
    iget v4, v0, Lcom/rudresh/videocompression/videocompression/b;->o0:I

    invoke-static {v4, v8}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v4

    iput v4, v0, Lcom/rudresh/videocompression/videocompression/b;->s0:I

    .line 80
    iget v4, v0, Lcom/rudresh/videocompression/videocompression/b;->o0:I

    invoke-static {v4, v5}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v4

    iput v4, v0, Lcom/rudresh/videocompression/videocompression/b;->t0:I

    .line 81
    iget v4, v0, Lcom/rudresh/videocompression/videocompression/b;->o0:I

    const-string v11, "excludePoint"

    invoke-static {v4, v11}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v4

    iput v4, v0, Lcom/rudresh/videocompression/videocompression/b;->u0:I

    .line 82
    iget v4, v0, Lcom/rudresh/videocompression/videocompression/b;->o0:I

    const-string v11, "excludeBlurSize"

    invoke-static {v4, v11}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v4

    iput v4, v0, Lcom/rudresh/videocompression/videocompression/b;->v0:I

    .line 83
    iget v4, v0, Lcom/rudresh/videocompression/videocompression/b;->o0:I

    const-string v11, "angle"

    invoke-static {v4, v11}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v4

    iput v4, v0, Lcom/rudresh/videocompression/videocompression/b;->w0:I

    .line 84
    iget v4, v0, Lcom/rudresh/videocompression/videocompression/b;->o0:I

    const-string v11, "aspectRatio"

    invoke-static {v4, v11}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v4

    iput v4, v0, Lcom/rudresh/videocompression/videocompression/b;->x0:I

    :goto_4
    const v4, 0x8b31

    .line 85
    invoke-static {v4, v6}, Lcom/rudresh/videocompression/videocompression/b;->q(ILjava/lang/String;)I

    move-result v11

    const-string v4, "varying highp vec2 texCoord;uniform sampler2D sourceImage;uniform sampler2D inputImageTexture2;uniform lowp float excludeSize;uniform lowp vec2 excludePoint;uniform lowp float excludeBlurSize;uniform highp float aspectRatio;void main() {lowp vec4 sharpImageColor = texture2D(sourceImage, texCoord);lowp vec4 blurredImageColor = texture2D(inputImageTexture2, texCoord);highp vec2 texCoordToUse = vec2(texCoord.x, (texCoord.y * aspectRatio + 0.5 - 0.5 * aspectRatio));highp float distanceFromCenter = distance(excludePoint, texCoordToUse);gl_FragColor = mix(sharpImageColor, blurredImageColor, smoothstep(excludeSize - excludeBlurSize, excludeSize, distanceFromCenter));}"

    const v2, 0x8b30

    .line 86
    invoke-static {v2, v4}, Lcom/rudresh/videocompression/videocompression/b;->q(ILjava/lang/String;)I

    move-result v4

    if-eqz v11, :cond_1b

    if-eqz v4, :cond_1b

    .line 87
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v2

    iput v2, v0, Lcom/rudresh/videocompression/videocompression/b;->y0:I

    .line 88
    invoke-static {v2, v11}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 89
    iget v2, v0, Lcom/rudresh/videocompression/videocompression/b;->y0:I

    invoke-static {v2, v4}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 90
    iget v2, v0, Lcom/rudresh/videocompression/videocompression/b;->y0:I

    invoke-static {v2, v3, v9}, Landroid/opengl/GLES20;->glBindAttribLocation(IILjava/lang/String;)V

    .line 91
    iget v2, v0, Lcom/rudresh/videocompression/videocompression/b;->y0:I

    const/4 v4, 0x1

    invoke-static {v2, v4, v10}, Landroid/opengl/GLES20;->glBindAttribLocation(IILjava/lang/String;)V

    .line 92
    iget v2, v0, Lcom/rudresh/videocompression/videocompression/b;->y0:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 93
    iget v2, v0, Lcom/rudresh/videocompression/videocompression/b;->y0:I

    const v4, 0x8b82

    invoke-static {v2, v4, v1, v3}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    aget v2, v1, v3

    if-nez v2, :cond_6

    .line 94
    iget v2, v0, Lcom/rudresh/videocompression/videocompression/b;->y0:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 95
    iput v3, v0, Lcom/rudresh/videocompression/videocompression/b;->y0:I

    goto :goto_5

    .line 96
    :cond_6
    iget v2, v0, Lcom/rudresh/videocompression/videocompression/b;->y0:I

    invoke-static {v2, v9}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/rudresh/videocompression/videocompression/b;->z0:I

    .line 97
    iget v2, v0, Lcom/rudresh/videocompression/videocompression/b;->y0:I

    invoke-static {v2, v10}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/rudresh/videocompression/videocompression/b;->A0:I

    .line 98
    iget v2, v0, Lcom/rudresh/videocompression/videocompression/b;->y0:I

    invoke-static {v2, v12}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/rudresh/videocompression/videocompression/b;->B0:I

    .line 99
    iget v2, v0, Lcom/rudresh/videocompression/videocompression/b;->y0:I

    invoke-static {v2, v8}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/rudresh/videocompression/videocompression/b;->C0:I

    .line 100
    iget v2, v0, Lcom/rudresh/videocompression/videocompression/b;->y0:I

    invoke-static {v2, v5}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/rudresh/videocompression/videocompression/b;->D0:I

    .line 101
    iget v2, v0, Lcom/rudresh/videocompression/videocompression/b;->y0:I

    const-string v4, "excludePoint"

    invoke-static {v2, v4}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/rudresh/videocompression/videocompression/b;->E0:I

    .line 102
    iget v2, v0, Lcom/rudresh/videocompression/videocompression/b;->y0:I

    const-string v4, "excludeBlurSize"

    invoke-static {v2, v4}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/rudresh/videocompression/videocompression/b;->F0:I

    .line 103
    iget v2, v0, Lcom/rudresh/videocompression/videocompression/b;->y0:I

    const-string v4, "aspectRatio"

    invoke-static {v2, v4}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/rudresh/videocompression/videocompression/b;->G0:I

    :goto_5
    const/4 v2, 0x0

    .line 104
    :goto_6
    iget-boolean v4, v0, Lcom/rudresh/videocompression/videocompression/b;->e1:Z

    if-eqz v4, :cond_7

    const/4 v5, 0x2

    goto :goto_7

    :cond_7
    const/4 v5, 0x1

    :goto_7
    const-string v11, "videoMatrix"

    if-ge v2, v5, :cond_c

    const/4 v5, 0x1

    if-ne v2, v5, :cond_8

    if-eqz v4, :cond_8

    const-string v4, "attribute vec4 position;uniform mat4 videoMatrix;attribute vec4 inputTexCoord;varying vec2 texCoord;void main() {gl_Position = position;texCoord = vec2(videoMatrix * inputTexCoord).xy;}"

    const v5, 0x8b31

    .line 105
    invoke-static {v5, v4}, Lcom/rudresh/videocompression/videocompression/b;->q(ILjava/lang/String;)I

    move-result v4

    .line 106
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    move/from16 v17, v4

    move-object/from16 v18, v8

    const/4 v4, 0x2

    new-array v8, v4, [Ljava/lang/Object;

    aput-object v14, v8, v3

    const/16 v16, 0x1

    aput-object v7, v8, v16

    const-string v3, "%1$s\nprecision highp float;varying vec2 texCoord;uniform %2$s sourceImage;vec3 rgb_to_hsv(vec3 c) {vec4 K = vec4(0.0, -1.0 / 3.0, 2.0 / 3.0, -1.0);vec4 p = c.g < c.b ? vec4(c.bg, K.wz) : vec4(c.gb, K.xy);vec4 q = c.r < p.x ? vec4(p.xyw, c.r) : vec4(c.r, p.yzx);float d = q.x - min(q.w, q.y);float e = 1.0e-10;return vec3(abs(q.z + (q.w - q.y) / (6.0 * d + e)), d / (q.x + e), q.x);}void main() {vec4 texel = texture2D(sourceImage, texCoord);gl_FragColor = vec4(rgb_to_hsv(texel.rgb), texel.a);}"

    invoke-static {v5, v3, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const v5, 0x8b30

    invoke-static {v5, v3}, Lcom/rudresh/videocompression/videocompression/b;->q(ILjava/lang/String;)I

    move-result v3

    move/from16 v4, v17

    goto :goto_8

    :cond_8
    move-object/from16 v18, v8

    const/4 v4, 0x2

    const v5, 0x8b30

    const/16 v16, 0x1

    const v3, 0x8b31

    .line 107
    invoke-static {v3, v6}, Lcom/rudresh/videocompression/videocompression/b;->q(ILjava/lang/String;)I

    move-result v8

    .line 108
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v13, v5, v4

    aput-object v15, v5, v16

    const-string v4, "%1$s\nprecision highp float;varying vec2 texCoord;uniform %2$s sourceImage;vec3 rgb_to_hsv(vec3 c) {vec4 K = vec4(0.0, -1.0 / 3.0, 2.0 / 3.0, -1.0);vec4 p = c.g < c.b ? vec4(c.bg, K.wz) : vec4(c.gb, K.xy);vec4 q = c.r < p.x ? vec4(p.xyw, c.r) : vec4(c.r, p.yzx);float d = q.x - min(q.w, q.y);float e = 1.0e-10;return vec3(abs(q.z + (q.w - q.y) / (6.0 * d + e)), d / (q.x + e), q.x);}void main() {vec4 texel = texture2D(sourceImage, texCoord);gl_FragColor = vec4(rgb_to_hsv(texel.rgb), texel.a);}"

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const v4, 0x8b30

    invoke-static {v4, v3}, Lcom/rudresh/videocompression/videocompression/b;->q(ILjava/lang/String;)I

    move-result v3

    move v4, v8

    :goto_8
    if-eqz v4, :cond_b

    if-eqz v3, :cond_b

    .line 109
    iget-object v5, v0, Lcom/rudresh/videocompression/videocompression/b;->I:[I

    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v8

    aput v8, v5, v2

    .line 110
    iget-object v5, v0, Lcom/rudresh/videocompression/videocompression/b;->I:[I

    aget v5, v5, v2

    invoke-static {v5, v4}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 111
    iget-object v4, v0, Lcom/rudresh/videocompression/videocompression/b;->I:[I

    aget v4, v4, v2

    invoke-static {v4, v3}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 112
    iget-object v3, v0, Lcom/rudresh/videocompression/videocompression/b;->I:[I

    aget v3, v3, v2

    const/4 v4, 0x0

    invoke-static {v3, v4, v9}, Landroid/opengl/GLES20;->glBindAttribLocation(IILjava/lang/String;)V

    .line 113
    iget-object v3, v0, Lcom/rudresh/videocompression/videocompression/b;->I:[I

    aget v3, v3, v2

    const/4 v5, 0x1

    invoke-static {v3, v5, v10}, Landroid/opengl/GLES20;->glBindAttribLocation(IILjava/lang/String;)V

    .line 114
    iget-object v3, v0, Lcom/rudresh/videocompression/videocompression/b;->I:[I

    aget v3, v3, v2

    invoke-static {v3}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 115
    iget-object v3, v0, Lcom/rudresh/videocompression/videocompression/b;->I:[I

    aget v3, v3, v2

    const v5, 0x8b82

    invoke-static {v3, v5, v1, v4}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    aget v3, v1, v4

    if-nez v3, :cond_9

    .line 116
    iget-object v3, v0, Lcom/rudresh/videocompression/videocompression/b;->I:[I

    aget v3, v3, v2

    invoke-static {v3}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 117
    iget-object v3, v0, Lcom/rudresh/videocompression/videocompression/b;->I:[I

    aput v4, v3, v2

    goto :goto_9

    .line 118
    :cond_9
    iget-object v3, v0, Lcom/rudresh/videocompression/videocompression/b;->J:[I

    iget-object v4, v0, Lcom/rudresh/videocompression/videocompression/b;->I:[I

    aget v4, v4, v2

    invoke-static {v4, v9}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v4

    aput v4, v3, v2

    .line 119
    iget-object v3, v0, Lcom/rudresh/videocompression/videocompression/b;->K:[I

    iget-object v4, v0, Lcom/rudresh/videocompression/videocompression/b;->I:[I

    aget v4, v4, v2

    invoke-static {v4, v10}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v4

    aput v4, v3, v2

    .line 120
    iget-object v3, v0, Lcom/rudresh/videocompression/videocompression/b;->L:[I

    iget-object v4, v0, Lcom/rudresh/videocompression/videocompression/b;->I:[I

    aget v4, v4, v2

    invoke-static {v4, v12}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v4

    aput v4, v3, v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_a

    .line 121
    iget-object v3, v0, Lcom/rudresh/videocompression/videocompression/b;->I:[I

    aget v3, v3, v2

    invoke-static {v3, v11}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/rudresh/videocompression/videocompression/b;->M:I

    :cond_a
    :goto_9
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v8, v18

    const/4 v3, 0x0

    goto/16 :goto_6

    :cond_b
    const/4 v1, 0x0

    return v1

    :cond_c
    move-object/from16 v18, v8

    const v2, 0x8b31

    .line 122
    invoke-static {v2, v6}, Lcom/rudresh/videocompression/videocompression/b;->q(ILjava/lang/String;)I

    move-result v3

    const-string v2, "precision highp float;varying vec2 texCoord;uniform sampler2D sourceImage;uniform sampler2D inputImageTexture2;uniform float intensity;float enhance(float value) {const vec2 offset = vec2(0.001953125, 0.03125);value = value + offset.x;vec2 coord = (clamp(texCoord, 0.125, 1.0 - 0.125001) - 0.125) * 4.0;vec2 frac = fract(coord);coord = floor(coord);float p00 = float(coord.y * 4.0 + coord.x) * 0.0625 + offset.y;float p01 = float(coord.y * 4.0 + coord.x + 1.0) * 0.0625 + offset.y;float p10 = float((coord.y + 1.0) * 4.0 + coord.x) * 0.0625 + offset.y;float p11 = float((coord.y + 1.0) * 4.0 + coord.x + 1.0) * 0.0625 + offset.y;vec3 c00 = texture2D(inputImageTexture2, vec2(value, p00)).rgb;vec3 c01 = texture2D(inputImageTexture2, vec2(value, p01)).rgb;vec3 c10 = texture2D(inputImageTexture2, vec2(value, p10)).rgb;vec3 c11 = texture2D(inputImageTexture2, vec2(value, p11)).rgb;float c1 = ((c00.r - c00.g) / (c00.b - c00.g));float c2 = ((c01.r - c01.g) / (c01.b - c01.g));float c3 = ((c10.r - c10.g) / (c10.b - c10.g));float c4 = ((c11.r - c11.g) / (c11.b - c11.g));float c1_2 = mix(c1, c2, frac.x);float c3_4 = mix(c3, c4, frac.x);return mix(c1_2, c3_4, frac.y);}vec3 hsv_to_rgb(vec3 c) {vec4 K = vec4(1.0, 2.0 / 3.0, 1.0 / 3.0, 3.0);vec3 p = abs(fract(c.xxx + K.xyz) * 6.0 - K.www);return c.z * mix(K.xxx, clamp(p - K.xxx, 0.0, 1.0), c.y);}void main() {vec4 texel = texture2D(sourceImage, texCoord);vec4 hsv = texel;hsv.y = min(1.0, hsv.y * 1.2);hsv.z = min(1.0, enhance(hsv.z) * 1.1);gl_FragColor = vec4(hsv_to_rgb(mix(texel.xyz, hsv.xyz, intensity)), texel.w);}"

    const v4, 0x8b30

    .line 123
    invoke-static {v4, v2}, Lcom/rudresh/videocompression/videocompression/b;->q(ILjava/lang/String;)I

    move-result v2

    if-eqz v3, :cond_1a

    if-eqz v2, :cond_1a

    .line 124
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v4

    iput v4, v0, Lcom/rudresh/videocompression/videocompression/b;->N:I

    .line 125
    invoke-static {v4, v3}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 126
    iget v3, v0, Lcom/rudresh/videocompression/videocompression/b;->N:I

    invoke-static {v3, v2}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 127
    iget v2, v0, Lcom/rudresh/videocompression/videocompression/b;->N:I

    const/4 v3, 0x0

    invoke-static {v2, v3, v9}, Landroid/opengl/GLES20;->glBindAttribLocation(IILjava/lang/String;)V

    .line 128
    iget v2, v0, Lcom/rudresh/videocompression/videocompression/b;->N:I

    const/4 v4, 0x1

    invoke-static {v2, v4, v10}, Landroid/opengl/GLES20;->glBindAttribLocation(IILjava/lang/String;)V

    .line 129
    iget v2, v0, Lcom/rudresh/videocompression/videocompression/b;->N:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 130
    iget v2, v0, Lcom/rudresh/videocompression/videocompression/b;->N:I

    const v4, 0x8b82

    invoke-static {v2, v4, v1, v3}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    aget v2, v1, v3

    if-nez v2, :cond_d

    .line 131
    iget v2, v0, Lcom/rudresh/videocompression/videocompression/b;->N:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 132
    iput v3, v0, Lcom/rudresh/videocompression/videocompression/b;->N:I

    move-object/from16 v3, v18

    goto :goto_a

    .line 133
    :cond_d
    iget v2, v0, Lcom/rudresh/videocompression/videocompression/b;->N:I

    invoke-static {v2, v9}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/rudresh/videocompression/videocompression/b;->O:I

    .line 134
    iget v2, v0, Lcom/rudresh/videocompression/videocompression/b;->N:I

    invoke-static {v2, v10}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/rudresh/videocompression/videocompression/b;->P:I

    .line 135
    iget v2, v0, Lcom/rudresh/videocompression/videocompression/b;->N:I

    invoke-static {v2, v12}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/rudresh/videocompression/videocompression/b;->Q:I

    .line 136
    iget v2, v0, Lcom/rudresh/videocompression/videocompression/b;->N:I

    const-string v3, "intensity"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/rudresh/videocompression/videocompression/b;->R:I

    .line 137
    iget v2, v0, Lcom/rudresh/videocompression/videocompression/b;->N:I

    move-object/from16 v3, v18

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/rudresh/videocompression/videocompression/b;->S:I

    .line 138
    :goto_a
    iget-boolean v2, v0, Lcom/rudresh/videocompression/videocompression/b;->e1:Z

    if-eqz v2, :cond_e

    const-string v2, "attribute vec4 position;uniform mat4 videoMatrix;attribute vec4 inputTexCoord;varying vec2 texCoord;void main() {gl_Position = position;texCoord = vec2(videoMatrix * inputTexCoord).xy;}"

    const v4, 0x8b31

    .line 139
    invoke-static {v4, v2}, Lcom/rudresh/videocompression/videocompression/b;->q(ILjava/lang/String;)I

    move-result v2

    goto :goto_b

    :cond_e
    const v4, 0x8b31

    .line 140
    invoke-static {v4, v6}, Lcom/rudresh/videocompression/videocompression/b;->q(ILjava/lang/String;)I

    move-result v2

    .line 141
    :goto_b
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v5, 0x2

    new-array v8, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v14, v8, v5

    const/4 v5, 0x1

    aput-object v7, v8, v5

    const-string v5, "%1$s\nprecision lowp float;varying highp vec2 texCoord;uniform %2$s sourceImage;void main() {vec4 inp = texture2D(sourceImage, texCoord);vec4 image = vec4(inp.rgb * pow(2.0, -1.0), inp.w);vec4 base = vec4(image.g, image.g, image.g, 1.0);vec4 overlay = vec4(image.b, image.b, image.b, 1.0);float ba = 2.0 * overlay.b * base.b + overlay.b * (1.0 - base.a) + base.b * (1.0 - overlay.a);gl_FragColor = vec4(ba,ba,ba,image.a);}"

    invoke-static {v4, v5, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const v8, 0x8b30

    invoke-static {v8, v5}, Lcom/rudresh/videocompression/videocompression/b;->q(ILjava/lang/String;)I

    move-result v5

    if-eqz v2, :cond_19

    if-eqz v5, :cond_19

    .line 142
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v8

    iput v8, v0, Lcom/rudresh/videocompression/videocompression/b;->l:I

    .line 143
    invoke-static {v8, v2}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 144
    iget v2, v0, Lcom/rudresh/videocompression/videocompression/b;->l:I

    invoke-static {v2, v5}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 145
    iget v2, v0, Lcom/rudresh/videocompression/videocompression/b;->l:I

    const/4 v5, 0x0

    invoke-static {v2, v5, v9}, Landroid/opengl/GLES20;->glBindAttribLocation(IILjava/lang/String;)V

    .line 146
    iget v2, v0, Lcom/rudresh/videocompression/videocompression/b;->l:I

    const/4 v8, 0x1

    invoke-static {v2, v8, v10}, Landroid/opengl/GLES20;->glBindAttribLocation(IILjava/lang/String;)V

    .line 147
    iget v2, v0, Lcom/rudresh/videocompression/videocompression/b;->l:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 148
    iget v2, v0, Lcom/rudresh/videocompression/videocompression/b;->l:I

    const v8, 0x8b82

    invoke-static {v2, v8, v1, v5}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    aget v2, v1, v5

    if-nez v2, :cond_f

    .line 149
    iget v2, v0, Lcom/rudresh/videocompression/videocompression/b;->l:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 150
    iput v5, v0, Lcom/rudresh/videocompression/videocompression/b;->l:I

    goto :goto_c

    .line 151
    :cond_f
    iget v2, v0, Lcom/rudresh/videocompression/videocompression/b;->l:I

    invoke-static {v2, v9}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/rudresh/videocompression/videocompression/b;->m:I

    .line 152
    iget v2, v0, Lcom/rudresh/videocompression/videocompression/b;->l:I

    invoke-static {v2, v10}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/rudresh/videocompression/videocompression/b;->n:I

    .line 153
    iget v2, v0, Lcom/rudresh/videocompression/videocompression/b;->l:I

    invoke-static {v2, v12}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/rudresh/videocompression/videocompression/b;->o:I

    .line 154
    iget-boolean v2, v0, Lcom/rudresh/videocompression/videocompression/b;->e1:Z

    if-eqz v2, :cond_10

    .line 155
    iget v2, v0, Lcom/rudresh/videocompression/videocompression/b;->l:I

    invoke-static {v2, v11}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/rudresh/videocompression/videocompression/b;->p:I

    :cond_10
    :goto_c
    const-string v2, "precision lowp float;varying highp vec2 texCoord;varying highp vec2 texCoord2;uniform sampler2D sourceImage;uniform sampler2D inputImageTexture2;void main() {vec4 image = texture2D(sourceImage, texCoord);vec4 blurredImage = texture2D(inputImageTexture2, texCoord2);gl_FragColor = vec4((image.rgb - blurredImage.rgb + vec3(0.5,0.5,0.5)), image.a);}"

    const v5, 0x8b30

    .line 156
    invoke-static {v5, v2}, Lcom/rudresh/videocompression/videocompression/b;->q(ILjava/lang/String;)I

    move-result v2

    const-string v5, "attribute vec4 position;attribute vec2 inputTexCoord;varying vec2 texCoord;varying vec2 texCoord2;void main() {gl_Position = position;texCoord = inputTexCoord;texCoord2 = inputTexCoord;}"

    const v8, 0x8b31

    .line 157
    invoke-static {v8, v5}, Lcom/rudresh/videocompression/videocompression/b;->q(ILjava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_18

    if-eqz v2, :cond_18

    .line 158
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v8

    iput v8, v0, Lcom/rudresh/videocompression/videocompression/b;->r:I

    .line 159
    invoke-static {v8, v5}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 160
    iget v5, v0, Lcom/rudresh/videocompression/videocompression/b;->r:I

    invoke-static {v5, v2}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 161
    iget v2, v0, Lcom/rudresh/videocompression/videocompression/b;->r:I

    const/4 v5, 0x0

    invoke-static {v2, v5, v9}, Landroid/opengl/GLES20;->glBindAttribLocation(IILjava/lang/String;)V

    .line 162
    iget v2, v0, Lcom/rudresh/videocompression/videocompression/b;->r:I

    const/4 v8, 0x1

    invoke-static {v2, v8, v10}, Landroid/opengl/GLES20;->glBindAttribLocation(IILjava/lang/String;)V

    .line 163
    iget v2, v0, Lcom/rudresh/videocompression/videocompression/b;->r:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 164
    iget v2, v0, Lcom/rudresh/videocompression/videocompression/b;->r:I

    const v8, 0x8b82

    invoke-static {v2, v8, v1, v5}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    aget v2, v1, v5

    if-nez v2, :cond_11

    .line 165
    iget v2, v0, Lcom/rudresh/videocompression/videocompression/b;->r:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 166
    iput v5, v0, Lcom/rudresh/videocompression/videocompression/b;->r:I

    goto :goto_d

    .line 167
    :cond_11
    iget v2, v0, Lcom/rudresh/videocompression/videocompression/b;->r:I

    invoke-static {v2, v9}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/rudresh/videocompression/videocompression/b;->s:I

    .line 168
    iget v2, v0, Lcom/rudresh/videocompression/videocompression/b;->r:I

    invoke-static {v2, v10}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/rudresh/videocompression/videocompression/b;->t:I

    .line 169
    iget v2, v0, Lcom/rudresh/videocompression/videocompression/b;->r:I

    invoke-static {v2, v12}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/rudresh/videocompression/videocompression/b;->u:I

    .line 170
    iget v2, v0, Lcom/rudresh/videocompression/videocompression/b;->r:I

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/rudresh/videocompression/videocompression/b;->v:I

    :goto_d
    const-string v2, "precision lowp float;varying highp vec2 texCoord;uniform sampler2D sourceImage;void main() {vec4 color = texture2D(sourceImage, texCoord);float hardLightColor = color.b;for (int i = 0; i < 3; ++i){if (hardLightColor < 0.5) {hardLightColor = hardLightColor * hardLightColor * 2.0;} else {hardLightColor = 1.0 - (1.0 - hardLightColor) * (1.0 - hardLightColor) * 2.0;}}float k = 255.0 / (164.0 - 75.0);hardLightColor = (hardLightColor - 75.0 / 255.0) * k;gl_FragColor = vec4(vec3(hardLightColor), color.a);}"

    const v3, 0x8b30

    .line 171
    invoke-static {v3, v2}, Lcom/rudresh/videocompression/videocompression/b;->q(ILjava/lang/String;)I

    move-result v2

    const v3, 0x8b31

    .line 172
    invoke-static {v3, v6}, Lcom/rudresh/videocompression/videocompression/b;->q(ILjava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_17

    if-eqz v2, :cond_17

    .line 173
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v3

    iput v3, v0, Lcom/rudresh/videocompression/videocompression/b;->E:I

    .line 174
    invoke-static {v3, v5}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 175
    iget v3, v0, Lcom/rudresh/videocompression/videocompression/b;->E:I

    invoke-static {v3, v2}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 176
    iget v2, v0, Lcom/rudresh/videocompression/videocompression/b;->E:I

    const/4 v3, 0x0

    invoke-static {v2, v3, v9}, Landroid/opengl/GLES20;->glBindAttribLocation(IILjava/lang/String;)V

    .line 177
    iget v2, v0, Lcom/rudresh/videocompression/videocompression/b;->E:I

    const/4 v5, 0x1

    invoke-static {v2, v5, v10}, Landroid/opengl/GLES20;->glBindAttribLocation(IILjava/lang/String;)V

    .line 178
    iget v2, v0, Lcom/rudresh/videocompression/videocompression/b;->E:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 179
    iget v2, v0, Lcom/rudresh/videocompression/videocompression/b;->E:I

    const v5, 0x8b82

    invoke-static {v2, v5, v1, v3}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    aget v2, v1, v3

    if-nez v2, :cond_12

    .line 180
    iget v2, v0, Lcom/rudresh/videocompression/videocompression/b;->E:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 181
    iput v3, v0, Lcom/rudresh/videocompression/videocompression/b;->E:I

    goto :goto_e

    .line 182
    :cond_12
    iget v2, v0, Lcom/rudresh/videocompression/videocompression/b;->E:I

    invoke-static {v2, v9}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/rudresh/videocompression/videocompression/b;->F:I

    .line 183
    iget v2, v0, Lcom/rudresh/videocompression/videocompression/b;->E:I

    invoke-static {v2, v10}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/rudresh/videocompression/videocompression/b;->G:I

    .line 184
    iget v2, v0, Lcom/rudresh/videocompression/videocompression/b;->E:I

    invoke-static {v2, v12}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/rudresh/videocompression/videocompression/b;->H:I

    .line 185
    :goto_e
    iget-boolean v2, v0, Lcom/rudresh/videocompression/videocompression/b;->e1:Z

    if-eqz v2, :cond_13

    const-string v2, "attribute vec4 position;uniform mat4 videoMatrix;attribute vec4 inputTexCoord;varying vec2 texCoord;varying vec2 texCoord2;void main() {gl_Position = position;texCoord = vec2(videoMatrix * inputTexCoord).xy;texCoord2 = inputTexCoord.xy;}"

    const v3, 0x8b31

    .line 186
    invoke-static {v3, v2}, Lcom/rudresh/videocompression/videocompression/b;->q(ILjava/lang/String;)I

    move-result v2

    goto :goto_f

    :cond_13
    const v3, 0x8b31

    const-string v2, "attribute vec4 position;attribute vec2 inputTexCoord;varying vec2 texCoord;varying vec2 texCoord2;void main() {gl_Position = position;texCoord = inputTexCoord;texCoord2 = inputTexCoord;}"

    .line 187
    invoke-static {v3, v2}, Lcom/rudresh/videocompression/videocompression/b;->q(ILjava/lang/String;)I

    move-result v2

    :goto_f
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v14, v3, v5

    const/4 v5, 0x1

    aput-object v7, v3, v5

    const-string v5, "%1$s\nprecision lowp float;varying highp vec2 texCoord;varying highp vec2 texCoord2;uniform %2$s sourceImage;uniform sampler2D toneCurveTexture;uniform sampler2D inputImageTexture3;uniform lowp float mixturePercent;void main() {vec4 image = texture2D(sourceImage, texCoord);vec4 mask = texture2D(inputImageTexture3, texCoord2);float redCurveValue = texture2D(toneCurveTexture, vec2(image.r, 0.0)).r;float greenCurveValue = texture2D(toneCurveTexture, vec2(image.g, 0.0)).g;float blueCurveValue = texture2D(toneCurveTexture, vec2(image.b, 0.0)).b;vec4 result = vec4(redCurveValue, greenCurveValue, blueCurveValue, image.a);vec4 tone = mix(image, result, mixturePercent);gl_FragColor = vec4(mix(image.rgb, tone.rgb, 1.0 - mask.b), 1.0);}"

    .line 188
    invoke-static {v4, v5, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const v4, 0x8b30

    invoke-static {v4, v3}, Lcom/rudresh/videocompression/videocompression/b;->q(ILjava/lang/String;)I

    move-result v3

    if-eqz v2, :cond_16

    if-eqz v3, :cond_16

    .line 189
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v4

    iput v4, v0, Lcom/rudresh/videocompression/videocompression/b;->w:I

    .line 190
    invoke-static {v4, v2}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 191
    iget v2, v0, Lcom/rudresh/videocompression/videocompression/b;->w:I

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 192
    iget v2, v0, Lcom/rudresh/videocompression/videocompression/b;->w:I

    const/4 v3, 0x0

    invoke-static {v2, v3, v9}, Landroid/opengl/GLES20;->glBindAttribLocation(IILjava/lang/String;)V

    .line 193
    iget v2, v0, Lcom/rudresh/videocompression/videocompression/b;->w:I

    const/4 v4, 0x1

    invoke-static {v2, v4, v10}, Landroid/opengl/GLES20;->glBindAttribLocation(IILjava/lang/String;)V

    .line 194
    iget v2, v0, Lcom/rudresh/videocompression/videocompression/b;->w:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 195
    iget v2, v0, Lcom/rudresh/videocompression/videocompression/b;->w:I

    const v4, 0x8b82

    invoke-static {v2, v4, v1, v3}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    aget v1, v1, v3

    if-nez v1, :cond_14

    .line 196
    iget v1, v0, Lcom/rudresh/videocompression/videocompression/b;->w:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 197
    iput v3, v0, Lcom/rudresh/videocompression/videocompression/b;->w:I

    goto :goto_10

    .line 198
    :cond_14
    iget v1, v0, Lcom/rudresh/videocompression/videocompression/b;->w:I

    invoke-static {v1, v9}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/rudresh/videocompression/videocompression/b;->x:I

    .line 199
    iget v1, v0, Lcom/rudresh/videocompression/videocompression/b;->w:I

    invoke-static {v1, v10}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/rudresh/videocompression/videocompression/b;->y:I

    .line 200
    iget v1, v0, Lcom/rudresh/videocompression/videocompression/b;->w:I

    invoke-static {v1, v12}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/rudresh/videocompression/videocompression/b;->z:I

    .line 201
    iget v1, v0, Lcom/rudresh/videocompression/videocompression/b;->w:I

    const-string v2, "inputImageTexture3"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/rudresh/videocompression/videocompression/b;->A:I

    .line 202
    iget v1, v0, Lcom/rudresh/videocompression/videocompression/b;->w:I

    const-string v2, "toneCurveTexture"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/rudresh/videocompression/videocompression/b;->B:I

    .line 203
    iget v1, v0, Lcom/rudresh/videocompression/videocompression/b;->w:I

    const-string v2, "mixturePercent"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/rudresh/videocompression/videocompression/b;->C:I

    .line 204
    iget-boolean v1, v0, Lcom/rudresh/videocompression/videocompression/b;->e1:Z

    if-eqz v1, :cond_15

    .line 205
    iget v1, v0, Lcom/rudresh/videocompression/videocompression/b;->w:I

    invoke-static {v1, v11}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/rudresh/videocompression/videocompression/b;->D:I

    .line 206
    :cond_15
    :goto_10
    new-instance v1, Lcom/rudresh/videocompression/videocompression/b$c;

    invoke-direct {v1}, Lcom/rudresh/videocompression/videocompression/b$c;-><init>()V

    iput-object v1, v0, Lcom/rudresh/videocompression/videocompression/b;->q:Lcom/rudresh/videocompression/videocompression/b$c;

    const/4 v1, 0x1

    return v1

    :cond_16
    const/4 v1, 0x0

    return v1

    :cond_17
    const/4 v1, 0x0

    return v1

    :cond_18
    const/4 v1, 0x0

    return v1

    :cond_19
    const/4 v1, 0x0

    return v1

    :cond_1a
    const/4 v1, 0x0

    return v1

    :cond_1b
    const/4 v1, 0x0

    return v1

    :cond_1c
    const/4 v1, 0x0

    return v1

    :cond_1d
    const/4 v1, 0x0

    return v1

    :cond_1e
    const/4 v1, 0x0

    return v1
.end method

.method public e()Z
    .locals 22

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/rudresh/videocompression/videocompression/b;->d1:Lcom/rudresh/videocompression/videocompression/b$b;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/rudresh/videocompression/videocompression/b$b;->i()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 2
    :goto_0
    iget-boolean v3, v0, Lcom/rudresh/videocompression/videocompression/b;->e1:Z

    if-nez v3, :cond_6

    iget-object v3, v0, Lcom/rudresh/videocompression/videocompression/b;->d1:Lcom/rudresh/videocompression/videocompression/b$b;

    if-eqz v3, :cond_6

    invoke-interface {v3}, Lcom/rudresh/videocompression/videocompression/b$b;->m()Z

    move-result v3

    if-nez v3, :cond_6

    if-nez v1, :cond_1

    goto/16 :goto_2

    .line 3
    :cond_1
    iget-boolean v3, v0, Lcom/rudresh/videocompression/videocompression/b;->d:Z

    const/4 v4, 0x4

    const/4 v5, 0x5

    const v6, 0x84c0

    const v7, 0x8ce0

    const/4 v8, 0x2

    const v9, 0x8d40

    const/4 v10, 0x1

    const/16 v11, 0xde1

    if-eqz v3, :cond_3

    .line 4
    iget-boolean v3, v0, Lcom/rudresh/videocompression/videocompression/b;->f:Z

    if-nez v3, :cond_2

    .line 5
    iget-object v3, v0, Lcom/rudresh/videocompression/videocompression/b;->T0:[I

    aget v3, v3, v8

    invoke-static {v11, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v3, 0x2801

    const/16 v12, 0x2601

    .line 6
    invoke-static {v11, v3, v12}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v3, 0x2800

    .line 7
    invoke-static {v11, v3, v12}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v3, 0x2802

    const v12, 0x812f

    .line 8
    invoke-static {v11, v3, v12}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v3, 0x2803

    .line 9
    invoke-static {v11, v3, v12}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v13, 0xde1

    const/4 v14, 0x0

    const/16 v15, 0x1908

    .line 10
    iget v3, v0, Lcom/rudresh/videocompression/videocompression/b;->Y0:I

    iget v12, v0, Lcom/rudresh/videocompression/videocompression/b;->Z0:I

    const/16 v18, 0x0

    const/16 v19, 0x1908

    const/16 v20, 0x1401

    const/16 v21, 0x0

    move/from16 v16, v3

    move/from16 v17, v12

    invoke-static/range {v13 .. v21}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 11
    iput-boolean v10, v0, Lcom/rudresh/videocompression/videocompression/b;->f:Z

    .line 12
    :cond_2
    iget-object v3, v0, Lcom/rudresh/videocompression/videocompression/b;->j:Lcom/rudresh/videocompression/videocompression/b$a;

    iget v3, v3, Lcom/rudresh/videocompression/videocompression/b$a;->a:I

    invoke-static {v3}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 13
    iget-object v3, v0, Lcom/rudresh/videocompression/videocompression/b;->j:Lcom/rudresh/videocompression/videocompression/b$a;

    iget v3, v3, Lcom/rudresh/videocompression/videocompression/b$a;->d:I

    invoke-static {v3, v2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 14
    iget-object v3, v0, Lcom/rudresh/videocompression/videocompression/b;->j:Lcom/rudresh/videocompression/videocompression/b$a;

    iget v3, v3, Lcom/rudresh/videocompression/videocompression/b$a;->c:I

    invoke-static {v3}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 15
    iget-object v3, v0, Lcom/rudresh/videocompression/videocompression/b;->j:Lcom/rudresh/videocompression/videocompression/b$a;

    iget v12, v3, Lcom/rudresh/videocompression/videocompression/b$a;->c:I

    const/4 v13, 0x2

    const/16 v14, 0x1406

    const/4 v15, 0x0

    const/16 v16, 0x8

    iget-object v3, v0, Lcom/rudresh/videocompression/videocompression/b;->b:Ljava/nio/FloatBuffer;

    move-object/from16 v17, v3

    invoke-static/range {v12 .. v17}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 16
    iget-object v3, v0, Lcom/rudresh/videocompression/videocompression/b;->j:Lcom/rudresh/videocompression/videocompression/b$a;

    iget v3, v3, Lcom/rudresh/videocompression/videocompression/b$a;->b:I

    invoke-static {v3}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 17
    iget-object v3, v0, Lcom/rudresh/videocompression/videocompression/b;->j:Lcom/rudresh/videocompression/videocompression/b$a;

    iget v12, v3, Lcom/rudresh/videocompression/videocompression/b$a;->b:I

    iget-object v3, v0, Lcom/rudresh/videocompression/videocompression/b;->c:Ljava/nio/FloatBuffer;

    move-object/from16 v17, v3

    invoke-static/range {v12 .. v17}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 18
    iget-object v3, v0, Lcom/rudresh/videocompression/videocompression/b;->V0:[I

    aget v3, v3, v2

    invoke-static {v9, v3}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 19
    iget-object v3, v0, Lcom/rudresh/videocompression/videocompression/b;->T0:[I

    aget v3, v3, v2

    invoke-static {v9, v7, v11, v3, v2}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    .line 20
    invoke-static {v6}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 21
    iget-object v3, v0, Lcom/rudresh/videocompression/videocompression/b;->T0:[I

    aget v3, v3, v10

    invoke-static {v11, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 22
    iget-object v3, v0, Lcom/rudresh/videocompression/videocompression/b;->j:Lcom/rudresh/videocompression/videocompression/b$a;

    iget v3, v3, Lcom/rudresh/videocompression/videocompression/b$a;->e:I

    const/4 v12, 0x0

    invoke-static {v3, v12}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 23
    iget-object v3, v0, Lcom/rudresh/videocompression/videocompression/b;->j:Lcom/rudresh/videocompression/videocompression/b$a;

    iget v3, v3, Lcom/rudresh/videocompression/videocompression/b$a;->f:I

    iget v13, v0, Lcom/rudresh/videocompression/videocompression/b;->Z0:I

    int-to-float v13, v13

    const/high16 v14, 0x3f800000    # 1.0f

    div-float v13, v14, v13

    invoke-static {v3, v13}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 24
    invoke-static {v5, v2, v4}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 25
    iget-object v3, v0, Lcom/rudresh/videocompression/videocompression/b;->V0:[I

    aget v3, v3, v8

    invoke-static {v9, v3}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 26
    iget-object v3, v0, Lcom/rudresh/videocompression/videocompression/b;->T0:[I

    aget v3, v3, v8

    invoke-static {v9, v7, v11, v3, v2}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    .line 27
    invoke-static {v6}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 28
    iget-object v3, v0, Lcom/rudresh/videocompression/videocompression/b;->T0:[I

    aget v3, v3, v2

    invoke-static {v11, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 29
    iget-object v3, v0, Lcom/rudresh/videocompression/videocompression/b;->j:Lcom/rudresh/videocompression/videocompression/b$a;

    iget v3, v3, Lcom/rudresh/videocompression/videocompression/b$a;->e:I

    iget v13, v0, Lcom/rudresh/videocompression/videocompression/b;->Y0:I

    int-to-float v13, v13

    div-float/2addr v14, v13

    invoke-static {v3, v14}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 30
    iget-object v3, v0, Lcom/rudresh/videocompression/videocompression/b;->j:Lcom/rudresh/videocompression/videocompression/b$a;

    iget v3, v3, Lcom/rudresh/videocompression/videocompression/b$a;->f:I

    invoke-static {v3, v12}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 31
    invoke-static {v5, v2, v4}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 32
    iput-boolean v2, v0, Lcom/rudresh/videocompression/videocompression/b;->d:Z

    .line 33
    :cond_3
    iget-object v3, v0, Lcom/rudresh/videocompression/videocompression/b;->V0:[I

    aget v3, v3, v2

    invoke-static {v9, v3}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 34
    iget-object v3, v0, Lcom/rudresh/videocompression/videocompression/b;->T0:[I

    aget v3, v3, v2

    invoke-static {v9, v7, v11, v3, v2}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    if-ne v1, v10, :cond_4

    .line 35
    iget v1, v0, Lcom/rudresh/videocompression/videocompression/b;->y0:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 36
    iget v1, v0, Lcom/rudresh/videocompression/videocompression/b;->B0:I

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 37
    iget v1, v0, Lcom/rudresh/videocompression/videocompression/b;->C0:I

    invoke-static {v1, v10}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 38
    iget v1, v0, Lcom/rudresh/videocompression/videocompression/b;->D0:I

    iget-object v3, v0, Lcom/rudresh/videocompression/videocompression/b;->d1:Lcom/rudresh/videocompression/videocompression/b$b;

    invoke-interface {v3}, Lcom/rudresh/videocompression/videocompression/b$b;->t()F

    move-result v3

    invoke-static {v1, v3}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 39
    iget v1, v0, Lcom/rudresh/videocompression/videocompression/b;->F0:I

    iget-object v3, v0, Lcom/rudresh/videocompression/videocompression/b;->d1:Lcom/rudresh/videocompression/videocompression/b$b;

    invoke-interface {v3}, Lcom/rudresh/videocompression/videocompression/b$b;->d()F

    move-result v3

    invoke-static {v1, v3}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 40
    iget-object v1, v0, Lcom/rudresh/videocompression/videocompression/b;->d1:Lcom/rudresh/videocompression/videocompression/b$b;

    invoke-interface {v1}, Lcom/rudresh/videocompression/videocompression/b$b;->q()Landroid/graphics/Point;

    move-result-object v1

    .line 41
    iget v3, v0, Lcom/rudresh/videocompression/videocompression/b;->E0:I

    iget v7, v1, Landroid/graphics/Point;->x:I

    int-to-float v7, v7

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    invoke-static {v3, v7, v1}, Landroid/opengl/GLES20;->glUniform2f(IFF)V

    .line 42
    iget v1, v0, Lcom/rudresh/videocompression/videocompression/b;->G0:I

    iget v3, v0, Lcom/rudresh/videocompression/videocompression/b;->Z0:I

    int-to-float v3, v3

    iget v7, v0, Lcom/rudresh/videocompression/videocompression/b;->Y0:I

    int-to-float v7, v7

    div-float/2addr v3, v7

    invoke-static {v1, v3}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 43
    iget v1, v0, Lcom/rudresh/videocompression/videocompression/b;->A0:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 44
    iget v12, v0, Lcom/rudresh/videocompression/videocompression/b;->A0:I

    const/4 v13, 0x2

    const/16 v14, 0x1406

    const/4 v15, 0x0

    const/16 v16, 0x8

    iget-object v1, v0, Lcom/rudresh/videocompression/videocompression/b;->b:Ljava/nio/FloatBuffer;

    move-object/from16 v17, v1

    invoke-static/range {v12 .. v17}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 45
    iget v1, v0, Lcom/rudresh/videocompression/videocompression/b;->z0:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 46
    iget v12, v0, Lcom/rudresh/videocompression/videocompression/b;->z0:I

    iget-object v1, v0, Lcom/rudresh/videocompression/videocompression/b;->c:Ljava/nio/FloatBuffer;

    move-object/from16 v17, v1

    invoke-static/range {v12 .. v17}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    goto :goto_1

    :cond_4
    if-ne v1, v8, :cond_5

    .line 47
    iget v1, v0, Lcom/rudresh/videocompression/videocompression/b;->o0:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 48
    iget v1, v0, Lcom/rudresh/videocompression/videocompression/b;->r0:I

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 49
    iget v1, v0, Lcom/rudresh/videocompression/videocompression/b;->s0:I

    invoke-static {v1, v10}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 50
    iget v1, v0, Lcom/rudresh/videocompression/videocompression/b;->t0:I

    iget-object v3, v0, Lcom/rudresh/videocompression/videocompression/b;->d1:Lcom/rudresh/videocompression/videocompression/b$b;

    invoke-interface {v3}, Lcom/rudresh/videocompression/videocompression/b$b;->t()F

    move-result v3

    invoke-static {v1, v3}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 51
    iget v1, v0, Lcom/rudresh/videocompression/videocompression/b;->v0:I

    iget-object v3, v0, Lcom/rudresh/videocompression/videocompression/b;->d1:Lcom/rudresh/videocompression/videocompression/b$b;

    invoke-interface {v3}, Lcom/rudresh/videocompression/videocompression/b$b;->d()F

    move-result v3

    invoke-static {v1, v3}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 52
    iget v1, v0, Lcom/rudresh/videocompression/videocompression/b;->w0:I

    iget-object v3, v0, Lcom/rudresh/videocompression/videocompression/b;->d1:Lcom/rudresh/videocompression/videocompression/b$b;

    invoke-interface {v3}, Lcom/rudresh/videocompression/videocompression/b$b;->v()F

    move-result v3

    invoke-static {v1, v3}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 53
    iget-object v1, v0, Lcom/rudresh/videocompression/videocompression/b;->d1:Lcom/rudresh/videocompression/videocompression/b$b;

    invoke-interface {v1}, Lcom/rudresh/videocompression/videocompression/b$b;->q()Landroid/graphics/Point;

    move-result-object v1

    .line 54
    iget v3, v0, Lcom/rudresh/videocompression/videocompression/b;->u0:I

    iget v7, v1, Landroid/graphics/Point;->x:I

    int-to-float v7, v7

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    invoke-static {v3, v7, v1}, Landroid/opengl/GLES20;->glUniform2f(IFF)V

    .line 55
    iget v1, v0, Lcom/rudresh/videocompression/videocompression/b;->x0:I

    iget v3, v0, Lcom/rudresh/videocompression/videocompression/b;->Z0:I

    int-to-float v3, v3

    iget v7, v0, Lcom/rudresh/videocompression/videocompression/b;->Y0:I

    int-to-float v7, v7

    div-float/2addr v3, v7

    invoke-static {v1, v3}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 56
    iget v1, v0, Lcom/rudresh/videocompression/videocompression/b;->q0:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 57
    iget v12, v0, Lcom/rudresh/videocompression/videocompression/b;->q0:I

    const/4 v13, 0x2

    const/16 v14, 0x1406

    const/4 v15, 0x0

    const/16 v16, 0x8

    iget-object v1, v0, Lcom/rudresh/videocompression/videocompression/b;->b:Ljava/nio/FloatBuffer;

    move-object/from16 v17, v1

    invoke-static/range {v12 .. v17}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 58
    iget v1, v0, Lcom/rudresh/videocompression/videocompression/b;->p0:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 59
    iget v12, v0, Lcom/rudresh/videocompression/videocompression/b;->p0:I

    iget-object v1, v0, Lcom/rudresh/videocompression/videocompression/b;->c:Ljava/nio/FloatBuffer;

    move-object/from16 v17, v1

    invoke-static/range {v12 .. v17}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 60
    :cond_5
    :goto_1
    invoke-static {v6}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 61
    iget-object v1, v0, Lcom/rudresh/videocompression/videocompression/b;->T0:[I

    aget v1, v1, v10

    invoke-static {v11, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const v1, 0x84c1

    .line 62
    invoke-static {v1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 63
    iget-object v1, v0, Lcom/rudresh/videocompression/videocompression/b;->T0:[I

    aget v1, v1, v8

    invoke-static {v11, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 64
    invoke-static {v5, v2, v4}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    return v10

    :cond_6
    :goto_2
    return v2
.end method

.method public f()V
    .locals 15

    .line 1
    iget-object v0, p0, Lcom/rudresh/videocompression/videocompression/b;->V0:[I

    iget-boolean v1, p0, Lcom/rudresh/videocompression/videocompression/b;->e1:Z

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    aget v0, v0, v1

    const v1, 0x8d40

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    const v0, 0x8ce0

    .line 2
    iget-object v3, p0, Lcom/rudresh/videocompression/videocompression/b;->T0:[I

    iget-boolean v4, p0, Lcom/rudresh/videocompression/videocompression/b;->e1:Z

    xor-int/2addr v4, v2

    aget v3, v3, v4

    const/16 v4, 0xde1

    const/4 v5, 0x0

    invoke-static {v1, v0, v4, v3, v5}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    .line 3
    iget v0, p0, Lcom/rudresh/videocompression/videocompression/b;->T:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const v0, 0x84c0

    .line 4
    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 5
    iget-object v0, p0, Lcom/rudresh/videocompression/videocompression/b;->T0:[I

    iget-boolean v1, p0, Lcom/rudresh/videocompression/videocompression/b;->e1:Z

    aget v0, v0, v1

    invoke-static {v4, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 6
    iget v0, p0, Lcom/rudresh/videocompression/videocompression/b;->W:I

    invoke-static {v0, v5}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 7
    iget-object v0, p0, Lcom/rudresh/videocompression/videocompression/b;->d1:Lcom/rudresh/videocompression/videocompression/b$b;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/rudresh/videocompression/videocompression/b$b;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 8
    :cond_0
    iget v0, p0, Lcom/rudresh/videocompression/videocompression/b;->X:I

    iget-object v6, p0, Lcom/rudresh/videocompression/videocompression/b;->d1:Lcom/rudresh/videocompression/videocompression/b$b;

    invoke-interface {v6}, Lcom/rudresh/videocompression/videocompression/b$b;->j()F

    move-result v6

    invoke-static {v0, v6}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 9
    iget v0, p0, Lcom/rudresh/videocompression/videocompression/b;->Y:I

    iget-object v6, p0, Lcom/rudresh/videocompression/videocompression/b;->d1:Lcom/rudresh/videocompression/videocompression/b$b;

    invoke-interface {v6}, Lcom/rudresh/videocompression/videocompression/b$b;->f()F

    move-result v6

    invoke-static {v0, v6}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 10
    iget v0, p0, Lcom/rudresh/videocompression/videocompression/b;->Z:I

    iget-object v6, p0, Lcom/rudresh/videocompression/videocompression/b;->d1:Lcom/rudresh/videocompression/videocompression/b$b;

    invoke-interface {v6}, Lcom/rudresh/videocompression/videocompression/b$b;->o()F

    move-result v6

    invoke-static {v0, v6}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 11
    iget v0, p0, Lcom/rudresh/videocompression/videocompression/b;->a0:I

    iget-object v6, p0, Lcom/rudresh/videocompression/videocompression/b;->d1:Lcom/rudresh/videocompression/videocompression/b$b;

    invoke-interface {v6}, Lcom/rudresh/videocompression/videocompression/b$b;->s()F

    move-result v6

    invoke-static {v0, v6}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 12
    iget v0, p0, Lcom/rudresh/videocompression/videocompression/b;->b0:I

    iget-object v6, p0, Lcom/rudresh/videocompression/videocompression/b;->d1:Lcom/rudresh/videocompression/videocompression/b$b;

    invoke-interface {v6}, Lcom/rudresh/videocompression/videocompression/b$b;->x()F

    move-result v6

    invoke-static {v0, v6}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 13
    iget v0, p0, Lcom/rudresh/videocompression/videocompression/b;->c0:I

    iget-object v6, p0, Lcom/rudresh/videocompression/videocompression/b;->d1:Lcom/rudresh/videocompression/videocompression/b$b;

    invoke-interface {v6}, Lcom/rudresh/videocompression/videocompression/b$b;->c()F

    move-result v6

    invoke-static {v0, v6}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 14
    iget v0, p0, Lcom/rudresh/videocompression/videocompression/b;->d0:I

    iget-object v6, p0, Lcom/rudresh/videocompression/videocompression/b;->d1:Lcom/rudresh/videocompression/videocompression/b$b;

    invoke-interface {v6}, Lcom/rudresh/videocompression/videocompression/b$b;->p()F

    move-result v6

    invoke-static {v0, v6}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 15
    iget v0, p0, Lcom/rudresh/videocompression/videocompression/b;->e0:I

    iget-object v6, p0, Lcom/rudresh/videocompression/videocompression/b;->d1:Lcom/rudresh/videocompression/videocompression/b$b;

    invoke-interface {v6}, Lcom/rudresh/videocompression/videocompression/b$b;->b()F

    move-result v6

    invoke-static {v0, v6}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 16
    iget v0, p0, Lcom/rudresh/videocompression/videocompression/b;->j0:I

    iget-object v6, p0, Lcom/rudresh/videocompression/videocompression/b;->d1:Lcom/rudresh/videocompression/videocompression/b$b;

    invoke-interface {v6}, Lcom/rudresh/videocompression/videocompression/b$b;->l()F

    move-result v6

    invoke-static {v0, v6}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 17
    iget-object v0, p0, Lcom/rudresh/videocompression/videocompression/b;->d1:Lcom/rudresh/videocompression/videocompression/b$b;

    invoke-interface {v0}, Lcom/rudresh/videocompression/videocompression/b$b;->w()I

    move-result v0

    .line 18
    iget-object v6, p0, Lcom/rudresh/videocompression/videocompression/b;->d1:Lcom/rudresh/videocompression/videocompression/b$b;

    invoke-interface {v6}, Lcom/rudresh/videocompression/videocompression/b$b;->a()I

    move-result v6

    .line 19
    iget v7, p0, Lcom/rudresh/videocompression/videocompression/b;->n0:I

    shr-int/lit8 v8, v0, 0x10

    and-int/lit16 v8, v8, 0xff

    int-to-float v8, v8

    const/high16 v9, 0x437f0000    # 255.0f

    div-float/2addr v8, v9

    shr-int/lit8 v10, v0, 0x8

    and-int/lit16 v10, v10, 0xff

    int-to-float v10, v10

    div-float/2addr v10, v9

    and-int/lit16 v0, v0, 0xff

    int-to-float v0, v0

    div-float/2addr v0, v9

    invoke-static {v7, v8, v10, v0}, Landroid/opengl/GLES20;->glUniform3f(IFFF)V

    .line 20
    iget v0, p0, Lcom/rudresh/videocompression/videocompression/b;->l0:I

    iget-object v7, p0, Lcom/rudresh/videocompression/videocompression/b;->d1:Lcom/rudresh/videocompression/videocompression/b$b;

    invoke-interface {v7}, Lcom/rudresh/videocompression/videocompression/b$b;->h()F

    move-result v7

    invoke-static {v0, v7}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 21
    iget v0, p0, Lcom/rudresh/videocompression/videocompression/b;->m0:I

    shr-int/lit8 v7, v6, 0x10

    and-int/lit16 v7, v7, 0xff

    int-to-float v7, v7

    div-float/2addr v7, v9

    shr-int/lit8 v8, v6, 0x8

    and-int/lit16 v8, v8, 0xff

    int-to-float v8, v8

    div-float/2addr v8, v9

    and-int/lit16 v6, v6, 0xff

    int-to-float v6, v6

    div-float/2addr v6, v9

    invoke-static {v0, v7, v8, v6}, Landroid/opengl/GLES20;->glUniform3f(IFFF)V

    .line 22
    iget v0, p0, Lcom/rudresh/videocompression/videocompression/b;->k0:I

    iget-object v6, p0, Lcom/rudresh/videocompression/videocompression/b;->d1:Lcom/rudresh/videocompression/videocompression/b$b;

    invoke-interface {v6}, Lcom/rudresh/videocompression/videocompression/b$b;->e()F

    move-result v6

    invoke-static {v0, v6}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 23
    iget-object v0, p0, Lcom/rudresh/videocompression/videocompression/b;->d1:Lcom/rudresh/videocompression/videocompression/b$b;

    invoke-interface {v0}, Lcom/rudresh/videocompression/videocompression/b$b;->n()Z

    move-result v0

    .line 24
    iget v6, p0, Lcom/rudresh/videocompression/videocompression/b;->i0:I

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    :cond_1
    invoke-static {v6, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    if-eqz v0, :cond_3

    .line 25
    iget-object v0, p0, Lcom/rudresh/videocompression/videocompression/b;->d1:Lcom/rudresh/videocompression/videocompression/b$b;

    invoke-interface {v0}, Lcom/rudresh/videocompression/videocompression/b$b;->u()Ljava/nio/ByteBuffer;

    move-result-object v14

    const v0, 0x84c1

    .line 26
    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 27
    iget-object v0, p0, Lcom/rudresh/videocompression/videocompression/b;->W0:[I

    aget v0, v0, v5

    invoke-static {v4, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v6, 0xde1

    const/4 v7, 0x0

    const/16 v8, 0x1908

    const/16 v9, 0xc8

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/16 v12, 0x1908

    const/16 v13, 0x1401

    .line 28
    invoke-static/range {v6 .. v14}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 29
    iget v0, p0, Lcom/rudresh/videocompression/videocompression/b;->h0:I

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    goto :goto_1

    .line 30
    :cond_2
    :goto_0
    iget v0, p0, Lcom/rudresh/videocompression/videocompression/b;->X:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 31
    iget v0, p0, Lcom/rudresh/videocompression/videocompression/b;->Y:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 32
    iget v0, p0, Lcom/rudresh/videocompression/videocompression/b;->Z:I

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 33
    iget v0, p0, Lcom/rudresh/videocompression/videocompression/b;->a0:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 34
    iget v0, p0, Lcom/rudresh/videocompression/videocompression/b;->b0:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 35
    iget v0, p0, Lcom/rudresh/videocompression/videocompression/b;->c0:I

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 36
    iget v0, p0, Lcom/rudresh/videocompression/videocompression/b;->d0:I

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 37
    iget v0, p0, Lcom/rudresh/videocompression/videocompression/b;->e0:I

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 38
    iget v0, p0, Lcom/rudresh/videocompression/videocompression/b;->j0:I

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 39
    iget v0, p0, Lcom/rudresh/videocompression/videocompression/b;->n0:I

    invoke-static {v0, v3, v3, v3}, Landroid/opengl/GLES20;->glUniform3f(IFFF)V

    .line 40
    iget v0, p0, Lcom/rudresh/videocompression/videocompression/b;->l0:I

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 41
    iget v0, p0, Lcom/rudresh/videocompression/videocompression/b;->m0:I

    invoke-static {v0, v3, v3, v3}, Landroid/opengl/GLES20;->glUniform3f(IFFF)V

    .line 42
    iget v0, p0, Lcom/rudresh/videocompression/videocompression/b;->k0:I

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 43
    iget v0, p0, Lcom/rudresh/videocompression/videocompression/b;->i0:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 44
    :cond_3
    :goto_1
    iget v0, p0, Lcom/rudresh/videocompression/videocompression/b;->f0:I

    iget v1, p0, Lcom/rudresh/videocompression/videocompression/b;->Y0:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 45
    iget v0, p0, Lcom/rudresh/videocompression/videocompression/b;->g0:I

    iget v1, p0, Lcom/rudresh/videocompression/videocompression/b;->Z0:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 46
    iget v0, p0, Lcom/rudresh/videocompression/videocompression/b;->V:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 47
    iget v6, p0, Lcom/rudresh/videocompression/videocompression/b;->V:I

    const/4 v7, 0x2

    const/16 v8, 0x1406

    const/4 v9, 0x0

    const/16 v10, 0x8

    iget-object v11, p0, Lcom/rudresh/videocompression/videocompression/b;->b:Ljava/nio/FloatBuffer;

    invoke-static/range {v6 .. v11}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 48
    iget v0, p0, Lcom/rudresh/videocompression/videocompression/b;->U:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 49
    iget v6, p0, Lcom/rudresh/videocompression/videocompression/b;->U:I

    iget-object v11, p0, Lcom/rudresh/videocompression/videocompression/b;->c:Ljava/nio/FloatBuffer;

    invoke-static/range {v6 .. v11}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    const/4 v0, 0x5

    const/4 v1, 0x4

    .line 50
    invoke-static {v0, v5, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    return-void
.end method

.method public g()V
    .locals 8

    .line 1
    iget-boolean v0, p0, Lcom/rudresh/videocompression/videocompression/b;->e1:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/rudresh/videocompression/videocompression/b;->V0:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    const v2, 0x8d40

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    const v0, 0x8ce0

    .line 3
    iget-object v3, p0, Lcom/rudresh/videocompression/videocompression/b;->T0:[I

    aget v3, v3, v1

    const/16 v4, 0xde1

    invoke-static {v2, v0, v4, v3, v1}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    .line 4
    iget v0, p0, Lcom/rudresh/videocompression/videocompression/b;->H0:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const v0, 0x84c0

    .line 5
    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 6
    iget-object v0, p0, Lcom/rudresh/videocompression/videocompression/b;->T0:[I

    const/4 v2, 0x1

    aget v0, v0, v2

    invoke-static {v4, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 7
    iget v0, p0, Lcom/rudresh/videocompression/videocompression/b;->N0:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 8
    iget-object v0, p0, Lcom/rudresh/videocompression/videocompression/b;->d1:Lcom/rudresh/videocompression/videocompression/b$b;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/rudresh/videocompression/videocompression/b$b;->m()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 9
    :cond_1
    iget v0, p0, Lcom/rudresh/videocompression/videocompression/b;->I0:I

    iget-object v2, p0, Lcom/rudresh/videocompression/videocompression/b;->d1:Lcom/rudresh/videocompression/videocompression/b$b;

    invoke-interface {v2}, Lcom/rudresh/videocompression/videocompression/b$b;->r()F

    move-result v2

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    goto :goto_1

    .line 10
    :cond_2
    :goto_0
    iget v0, p0, Lcom/rudresh/videocompression/videocompression/b;->I0:I

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 11
    :goto_1
    iget v0, p0, Lcom/rudresh/videocompression/videocompression/b;->J0:I

    iget v2, p0, Lcom/rudresh/videocompression/videocompression/b;->Y0:I

    int-to-float v2, v2

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 12
    iget v0, p0, Lcom/rudresh/videocompression/videocompression/b;->K0:I

    iget v2, p0, Lcom/rudresh/videocompression/videocompression/b;->Z0:I

    int-to-float v2, v2

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 13
    iget v0, p0, Lcom/rudresh/videocompression/videocompression/b;->M0:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 14
    iget v2, p0, Lcom/rudresh/videocompression/videocompression/b;->M0:I

    const/4 v3, 0x2

    const/16 v4, 0x1406

    const/4 v5, 0x0

    const/16 v6, 0x8

    iget-object v7, p0, Lcom/rudresh/videocompression/videocompression/b;->b:Ljava/nio/FloatBuffer;

    invoke-static/range {v2 .. v7}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 15
    iget v0, p0, Lcom/rudresh/videocompression/videocompression/b;->L0:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 16
    iget v2, p0, Lcom/rudresh/videocompression/videocompression/b;->L0:I

    iget-object v7, p0, Lcom/rudresh/videocompression/videocompression/b;->c:Ljava/nio/FloatBuffer;

    invoke-static/range {v2 .. v7}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    const/4 v0, 0x5

    const/4 v2, 0x4

    .line 17
    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    return-void
.end method

.method public h()Z
    .locals 25

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/rudresh/videocompression/videocompression/b;->d1:Lcom/rudresh/videocompression/videocompression/b$b;

    const/4 v2, 0x0

    if-eqz v1, :cond_b

    invoke-interface {v1}, Lcom/rudresh/videocompression/videocompression/b$b;->m()Z

    move-result v1

    if-nez v1, :cond_b

    iget-object v1, v0, Lcom/rudresh/videocompression/videocompression/b;->d1:Lcom/rudresh/videocompression/videocompression/b$b;

    invoke-interface {v1}, Lcom/rudresh/videocompression/videocompression/b$b;->g()F

    move-result v1

    const/4 v3, 0x0

    cmpg-float v1, v1, v3

    if-lez v1, :cond_b

    iget v1, v0, Lcom/rudresh/videocompression/videocompression/b;->Y0:I

    if-lez v1, :cond_b

    iget v4, v0, Lcom/rudresh/videocompression/videocompression/b;->Z0:I

    if-gtz v4, :cond_0

    goto/16 :goto_2

    .line 2
    :cond_0
    iget-boolean v4, v0, Lcom/rudresh/videocompression/videocompression/b;->e:Z

    const v5, 0x84c1

    const v6, 0x8d65

    const/4 v7, 0x4

    const/4 v8, 0x5

    const v9, 0x84c0

    const v10, 0x8ce0

    const/4 v11, 0x3

    const v12, 0x8d40

    const/4 v13, 0x1

    const/16 v14, 0xde1

    if-nez v4, :cond_1

    iget-boolean v4, v0, Lcom/rudresh/videocompression/videocompression/b;->e1:Z

    if-eqz v4, :cond_8

    :cond_1
    int-to-float v1, v1

    const v4, 0x3bc49ba6    # 0.006f

    mul-float v1, v1, v4

    .line 3
    iget-object v4, v0, Lcom/rudresh/videocompression/videocompression/b;->h:Lcom/rudresh/videocompression/videocompression/b$a;

    if-eqz v4, :cond_2

    iget v4, v0, Lcom/rudresh/videocompression/videocompression/b;->i:F

    sub-float/2addr v4, v1

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-double v3, v4

    const-wide v16, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpl-double v18, v3, v16

    if-lez v18, :cond_4

    .line 4
    :cond_2
    iget-object v3, v0, Lcom/rudresh/videocompression/videocompression/b;->h:Lcom/rudresh/videocompression/videocompression/b$a;

    if-eqz v3, :cond_3

    .line 5
    invoke-virtual {v3}, Lcom/rudresh/videocompression/videocompression/b$a;->b()V

    .line 6
    :cond_3
    iput v1, v0, Lcom/rudresh/videocompression/videocompression/b;->i:F

    .line 7
    new-instance v3, Lcom/rudresh/videocompression/videocompression/b$a;

    const/high16 v4, 0x40000000    # 2.0f

    invoke-direct {v3, v1, v4, v13}, Lcom/rudresh/videocompression/videocompression/b$a;-><init>(FFZ)V

    iput-object v3, v0, Lcom/rudresh/videocompression/videocompression/b;->h:Lcom/rudresh/videocompression/videocompression/b$a;

    .line 8
    invoke-virtual {v3}, Lcom/rudresh/videocompression/videocompression/b$a;->a()Z

    .line 9
    :cond_4
    iget-boolean v1, v0, Lcom/rudresh/videocompression/videocompression/b;->g:Z

    if-nez v1, :cond_5

    .line 10
    iget-object v1, v0, Lcom/rudresh/videocompression/videocompression/b;->T0:[I

    aget v1, v1, v11

    invoke-static {v14, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v1, 0x2801

    const/16 v3, 0x2601

    .line 11
    invoke-static {v14, v1, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v1, 0x2800

    .line 12
    invoke-static {v14, v1, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v1, 0x2802

    const v3, 0x812f

    .line 13
    invoke-static {v14, v1, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v1, 0x2803

    .line 14
    invoke-static {v14, v1, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v16, 0xde1

    const/16 v17, 0x0

    const/16 v18, 0x1908

    .line 15
    iget v1, v0, Lcom/rudresh/videocompression/videocompression/b;->Y0:I

    iget v3, v0, Lcom/rudresh/videocompression/videocompression/b;->Z0:I

    const/16 v21, 0x0

    const/16 v22, 0x1908

    const/16 v23, 0x1401

    const/16 v24, 0x0

    move/from16 v19, v1

    move/from16 v20, v3

    invoke-static/range {v16 .. v24}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 16
    iput-boolean v13, v0, Lcom/rudresh/videocompression/videocompression/b;->g:Z

    .line 17
    :cond_5
    iget v1, v0, Lcom/rudresh/videocompression/videocompression/b;->l:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 18
    iget v1, v0, Lcom/rudresh/videocompression/videocompression/b;->o:I

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 19
    iget v1, v0, Lcom/rudresh/videocompression/videocompression/b;->n:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 20
    iget v1, v0, Lcom/rudresh/videocompression/videocompression/b;->n:I

    const/16 v17, 0x2

    const/16 v18, 0x1406

    const/16 v19, 0x0

    const/16 v20, 0x8

    iget-object v3, v0, Lcom/rudresh/videocompression/videocompression/b;->b:Ljava/nio/FloatBuffer;

    move/from16 v16, v1

    move-object/from16 v21, v3

    invoke-static/range {v16 .. v21}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 21
    iget v1, v0, Lcom/rudresh/videocompression/videocompression/b;->m:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 22
    iget-boolean v1, v0, Lcom/rudresh/videocompression/videocompression/b;->e1:Z

    if-eqz v1, :cond_6

    .line 23
    iget v1, v0, Lcom/rudresh/videocompression/videocompression/b;->p:I

    iget-object v3, v0, Lcom/rudresh/videocompression/videocompression/b;->P0:[F

    invoke-static {v1, v13, v2, v3, v2}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 24
    :cond_6
    iget v1, v0, Lcom/rudresh/videocompression/videocompression/b;->m:I

    const/16 v17, 0x2

    const/16 v18, 0x1406

    const/16 v19, 0x0

    const/16 v20, 0x8

    iget-object v3, v0, Lcom/rudresh/videocompression/videocompression/b;->c:Ljava/nio/FloatBuffer;

    move/from16 v16, v1

    move-object/from16 v21, v3

    invoke-static/range {v16 .. v21}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 25
    iget-object v1, v0, Lcom/rudresh/videocompression/videocompression/b;->V0:[I

    aget v1, v1, v2

    invoke-static {v12, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 26
    iget-object v1, v0, Lcom/rudresh/videocompression/videocompression/b;->T0:[I

    aget v1, v1, v2

    invoke-static {v12, v10, v14, v1, v2}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    .line 27
    invoke-static {v9}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 28
    iget-boolean v1, v0, Lcom/rudresh/videocompression/videocompression/b;->e1:Z

    if-eqz v1, :cond_7

    .line 29
    iget v1, v0, Lcom/rudresh/videocompression/videocompression/b;->O0:I

    invoke-static {v6, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    goto :goto_0

    .line 30
    :cond_7
    iget-object v1, v0, Lcom/rudresh/videocompression/videocompression/b;->U0:[I

    aget v1, v1, v2

    invoke-static {v14, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 31
    :goto_0
    invoke-static {v8, v2, v7}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 32
    iget-object v1, v0, Lcom/rudresh/videocompression/videocompression/b;->h:Lcom/rudresh/videocompression/videocompression/b$a;

    iget v1, v1, Lcom/rudresh/videocompression/videocompression/b$a;->a:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 33
    iget-object v1, v0, Lcom/rudresh/videocompression/videocompression/b;->h:Lcom/rudresh/videocompression/videocompression/b$a;

    iget v1, v1, Lcom/rudresh/videocompression/videocompression/b$a;->d:I

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 34
    iget-object v1, v0, Lcom/rudresh/videocompression/videocompression/b;->h:Lcom/rudresh/videocompression/videocompression/b$a;

    iget v1, v1, Lcom/rudresh/videocompression/videocompression/b$a;->c:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 35
    iget-object v1, v0, Lcom/rudresh/videocompression/videocompression/b;->h:Lcom/rudresh/videocompression/videocompression/b$a;

    iget v1, v1, Lcom/rudresh/videocompression/videocompression/b$a;->c:I

    const/16 v17, 0x2

    const/16 v18, 0x1406

    const/16 v19, 0x0

    const/16 v20, 0x8

    iget-object v3, v0, Lcom/rudresh/videocompression/videocompression/b;->b:Ljava/nio/FloatBuffer;

    move/from16 v16, v1

    move-object/from16 v21, v3

    invoke-static/range {v16 .. v21}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 36
    iget-object v1, v0, Lcom/rudresh/videocompression/videocompression/b;->h:Lcom/rudresh/videocompression/videocompression/b$a;

    iget v1, v1, Lcom/rudresh/videocompression/videocompression/b$a;->b:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 37
    iget-object v1, v0, Lcom/rudresh/videocompression/videocompression/b;->h:Lcom/rudresh/videocompression/videocompression/b$a;

    iget v1, v1, Lcom/rudresh/videocompression/videocompression/b$a;->b:I

    iget-object v3, v0, Lcom/rudresh/videocompression/videocompression/b;->c:Ljava/nio/FloatBuffer;

    move/from16 v16, v1

    move-object/from16 v21, v3

    invoke-static/range {v16 .. v21}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 38
    iget-object v1, v0, Lcom/rudresh/videocompression/videocompression/b;->V0:[I

    aget v1, v1, v13

    invoke-static {v12, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 39
    iget-object v1, v0, Lcom/rudresh/videocompression/videocompression/b;->T0:[I

    aget v1, v1, v13

    invoke-static {v12, v10, v14, v1, v2}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    .line 40
    invoke-static {v9}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 41
    iget-object v1, v0, Lcom/rudresh/videocompression/videocompression/b;->T0:[I

    aget v1, v1, v2

    invoke-static {v14, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 42
    iget-object v1, v0, Lcom/rudresh/videocompression/videocompression/b;->h:Lcom/rudresh/videocompression/videocompression/b$a;

    iget v1, v1, Lcom/rudresh/videocompression/videocompression/b$a;->e:I

    const/4 v3, 0x0

    invoke-static {v1, v3}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 43
    iget-object v1, v0, Lcom/rudresh/videocompression/videocompression/b;->h:Lcom/rudresh/videocompression/videocompression/b$a;

    iget v1, v1, Lcom/rudresh/videocompression/videocompression/b$a;->f:I

    iget v3, v0, Lcom/rudresh/videocompression/videocompression/b;->Z0:I

    int-to-float v3, v3

    const/high16 v4, 0x3f800000    # 1.0f

    div-float v3, v4, v3

    invoke-static {v1, v3}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 44
    invoke-static {v8, v2, v7}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 45
    iget-object v1, v0, Lcom/rudresh/videocompression/videocompression/b;->V0:[I

    aget v1, v1, v11

    invoke-static {v12, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 46
    iget-object v1, v0, Lcom/rudresh/videocompression/videocompression/b;->T0:[I

    aget v1, v1, v11

    invoke-static {v12, v10, v14, v1, v2}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    .line 47
    invoke-static {v9}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 48
    iget-object v1, v0, Lcom/rudresh/videocompression/videocompression/b;->T0:[I

    aget v1, v1, v13

    invoke-static {v14, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 49
    iget-object v1, v0, Lcom/rudresh/videocompression/videocompression/b;->h:Lcom/rudresh/videocompression/videocompression/b$a;

    iget v1, v1, Lcom/rudresh/videocompression/videocompression/b$a;->e:I

    iget v3, v0, Lcom/rudresh/videocompression/videocompression/b;->Y0:I

    int-to-float v3, v3

    div-float/2addr v4, v3

    invoke-static {v1, v4}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 50
    iget-object v1, v0, Lcom/rudresh/videocompression/videocompression/b;->h:Lcom/rudresh/videocompression/videocompression/b$a;

    iget v1, v1, Lcom/rudresh/videocompression/videocompression/b$a;->f:I

    const/4 v3, 0x0

    invoke-static {v1, v3}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 51
    invoke-static {v8, v2, v7}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 52
    iget v1, v0, Lcom/rudresh/videocompression/videocompression/b;->r:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 53
    iget v1, v0, Lcom/rudresh/videocompression/videocompression/b;->u:I

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 54
    iget v1, v0, Lcom/rudresh/videocompression/videocompression/b;->v:I

    invoke-static {v1, v13}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 55
    iget v1, v0, Lcom/rudresh/videocompression/videocompression/b;->t:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 56
    iget v15, v0, Lcom/rudresh/videocompression/videocompression/b;->t:I

    const/16 v16, 0x2

    const/16 v17, 0x1406

    const/16 v18, 0x0

    const/16 v19, 0x8

    iget-object v1, v0, Lcom/rudresh/videocompression/videocompression/b;->b:Ljava/nio/FloatBuffer;

    move-object/from16 v20, v1

    invoke-static/range {v15 .. v20}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 57
    iget v1, v0, Lcom/rudresh/videocompression/videocompression/b;->s:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 58
    iget v15, v0, Lcom/rudresh/videocompression/videocompression/b;->s:I

    iget-object v1, v0, Lcom/rudresh/videocompression/videocompression/b;->c:Ljava/nio/FloatBuffer;

    move-object/from16 v20, v1

    invoke-static/range {v15 .. v20}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 59
    iget-object v1, v0, Lcom/rudresh/videocompression/videocompression/b;->V0:[I

    aget v1, v1, v13

    invoke-static {v12, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 60
    iget-object v1, v0, Lcom/rudresh/videocompression/videocompression/b;->T0:[I

    aget v1, v1, v13

    invoke-static {v12, v10, v14, v1, v2}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    .line 61
    invoke-static {v9}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 62
    iget-object v1, v0, Lcom/rudresh/videocompression/videocompression/b;->T0:[I

    aget v1, v1, v2

    invoke-static {v14, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 63
    invoke-static {v5}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 64
    iget-object v1, v0, Lcom/rudresh/videocompression/videocompression/b;->T0:[I

    aget v1, v1, v11

    invoke-static {v14, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 65
    invoke-static {v8, v2, v7}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 66
    iget v1, v0, Lcom/rudresh/videocompression/videocompression/b;->E:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 67
    iget v1, v0, Lcom/rudresh/videocompression/videocompression/b;->H:I

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 68
    iget v1, v0, Lcom/rudresh/videocompression/videocompression/b;->G:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 69
    iget v15, v0, Lcom/rudresh/videocompression/videocompression/b;->G:I

    iget-object v1, v0, Lcom/rudresh/videocompression/videocompression/b;->b:Ljava/nio/FloatBuffer;

    move-object/from16 v20, v1

    invoke-static/range {v15 .. v20}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 70
    iget v1, v0, Lcom/rudresh/videocompression/videocompression/b;->F:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 71
    iget v15, v0, Lcom/rudresh/videocompression/videocompression/b;->F:I

    iget-object v1, v0, Lcom/rudresh/videocompression/videocompression/b;->c:Ljava/nio/FloatBuffer;

    move-object/from16 v20, v1

    invoke-static/range {v15 .. v20}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 72
    iget-object v1, v0, Lcom/rudresh/videocompression/videocompression/b;->V0:[I

    aget v1, v1, v11

    invoke-static {v12, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 73
    iget-object v1, v0, Lcom/rudresh/videocompression/videocompression/b;->T0:[I

    aget v1, v1, v11

    invoke-static {v12, v10, v14, v1, v2}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    .line 74
    invoke-static {v9}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 75
    iget-object v1, v0, Lcom/rudresh/videocompression/videocompression/b;->T0:[I

    aget v1, v1, v13

    invoke-static {v14, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 76
    invoke-static {v8, v2, v7}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 77
    iput-boolean v2, v0, Lcom/rudresh/videocompression/videocompression/b;->e:Z

    .line 78
    :cond_8
    iput-boolean v13, v0, Lcom/rudresh/videocompression/videocompression/b;->k:Z

    .line 79
    iput-boolean v2, v0, Lcom/rudresh/videocompression/videocompression/b;->X0:Z

    .line 80
    iget v1, v0, Lcom/rudresh/videocompression/videocompression/b;->w:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 81
    iget v1, v0, Lcom/rudresh/videocompression/videocompression/b;->z:I

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 82
    iget v1, v0, Lcom/rudresh/videocompression/videocompression/b;->A:I

    invoke-static {v1, v13}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 83
    iget v1, v0, Lcom/rudresh/videocompression/videocompression/b;->B:I

    const/4 v3, 0x2

    invoke-static {v1, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 84
    iget v1, v0, Lcom/rudresh/videocompression/videocompression/b;->C:I

    iget-object v3, v0, Lcom/rudresh/videocompression/videocompression/b;->d1:Lcom/rudresh/videocompression/videocompression/b$b;

    invoke-interface {v3}, Lcom/rudresh/videocompression/videocompression/b$b;->g()F

    move-result v3

    invoke-static {v1, v3}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 85
    iget v1, v0, Lcom/rudresh/videocompression/videocompression/b;->y:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 86
    iget v15, v0, Lcom/rudresh/videocompression/videocompression/b;->y:I

    const/16 v16, 0x2

    const/16 v17, 0x1406

    const/16 v18, 0x0

    const/16 v19, 0x8

    iget-object v1, v0, Lcom/rudresh/videocompression/videocompression/b;->b:Ljava/nio/FloatBuffer;

    move-object/from16 v20, v1

    invoke-static/range {v15 .. v20}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 87
    iget v1, v0, Lcom/rudresh/videocompression/videocompression/b;->x:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 88
    iget v15, v0, Lcom/rudresh/videocompression/videocompression/b;->x:I

    iget-object v1, v0, Lcom/rudresh/videocompression/videocompression/b;->c:Ljava/nio/FloatBuffer;

    move-object/from16 v20, v1

    invoke-static/range {v15 .. v20}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 89
    iget-boolean v1, v0, Lcom/rudresh/videocompression/videocompression/b;->e1:Z

    if-eqz v1, :cond_9

    .line 90
    iget v1, v0, Lcom/rudresh/videocompression/videocompression/b;->D:I

    iget-object v3, v0, Lcom/rudresh/videocompression/videocompression/b;->P0:[F

    invoke-static {v1, v13, v2, v3, v2}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 91
    :cond_9
    iget-object v1, v0, Lcom/rudresh/videocompression/videocompression/b;->V0:[I

    aget v1, v1, v13

    invoke-static {v12, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 92
    iget-object v1, v0, Lcom/rudresh/videocompression/videocompression/b;->T0:[I

    aget v1, v1, v13

    invoke-static {v12, v10, v14, v1, v2}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    .line 93
    invoke-static {v9}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 94
    iget-boolean v1, v0, Lcom/rudresh/videocompression/videocompression/b;->e1:Z

    if-eqz v1, :cond_a

    .line 95
    iget v1, v0, Lcom/rudresh/videocompression/videocompression/b;->O0:I

    invoke-static {v6, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    goto :goto_1

    .line 96
    :cond_a
    iget-object v1, v0, Lcom/rudresh/videocompression/videocompression/b;->U0:[I

    aget v1, v1, v2

    invoke-static {v14, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 97
    :goto_1
    invoke-static {v5}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 98
    iget-object v1, v0, Lcom/rudresh/videocompression/videocompression/b;->T0:[I

    aget v1, v1, v11

    invoke-static {v14, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const v1, 0x84c2

    .line 99
    invoke-static {v1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 100
    iget-object v1, v0, Lcom/rudresh/videocompression/videocompression/b;->q:Lcom/rudresh/videocompression/videocompression/b$c;

    invoke-virtual {v1}, Lcom/rudresh/videocompression/videocompression/b$c;->a()I

    move-result v1

    invoke-static {v14, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 101
    invoke-static {v8, v2, v7}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    return v13

    .line 102
    :cond_b
    :goto_2
    iget-boolean v1, v0, Lcom/rudresh/videocompression/videocompression/b;->k:Z

    if-eqz v1, :cond_c

    .line 103
    iput-boolean v2, v0, Lcom/rudresh/videocompression/videocompression/b;->X0:Z

    .line 104
    iput-boolean v2, v0, Lcom/rudresh/videocompression/videocompression/b;->k:Z

    :cond_c
    return v2
.end method

.method public j()I
    .locals 1

    iget v0, p0, Lcom/rudresh/videocompression/videocompression/b;->Z0:I

    return v0
.end method

.method public k()I
    .locals 1

    iget v0, p0, Lcom/rudresh/videocompression/videocompression/b;->Y0:I

    return v0
.end method

.method public l()I
    .locals 2

    iget-object v0, p0, Lcom/rudresh/videocompression/videocompression/b;->V0:[I

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/rudresh/videocompression/videocompression/b;->e1:Z

    xor-int/lit8 v1, v1, 0x1

    aget v0, v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public m(I)I
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/rudresh/videocompression/videocompression/b;->e1:Z

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/rudresh/videocompression/videocompression/b;->T0:[I

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    aget p1, v0, p1

    return p1

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/rudresh/videocompression/videocompression/b;->T0:[I

    aget p1, v0, p1

    return p1
.end method

.method public n()Ljava/nio/FloatBuffer;
    .locals 1

    iget-object v0, p0, Lcom/rudresh/videocompression/videocompression/b;->b:Ljava/nio/FloatBuffer;

    return-object v0
.end method

.method public o()Ljava/nio/FloatBuffer;
    .locals 1

    iget-object v0, p0, Lcom/rudresh/videocompression/videocompression/b;->a:Ljava/nio/FloatBuffer;

    return-object v0
.end method

.method public p()Ljava/nio/FloatBuffer;
    .locals 1

    iget-object v0, p0, Lcom/rudresh/videocompression/videocompression/b;->c:Ljava/nio/FloatBuffer;

    return-object v0
.end method

.method public r([F)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/rudresh/videocompression/videocompression/b;->P0:[F

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/rudresh/videocompression/videocompression/b;->X0:Z

    return-void
.end method

.method public s()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/rudresh/videocompression/videocompression/b;->d:Z

    .line 2
    iput-boolean v0, p0, Lcom/rudresh/videocompression/videocompression/b;->e:Z

    return-void
.end method

.method public t(Lcom/rudresh/videocompression/videocompression/b$b;)V
    .locals 0

    iput-object p1, p0, Lcom/rudresh/videocompression/videocompression/b;->d1:Lcom/rudresh/videocompression/videocompression/b$b;

    return-void
.end method
