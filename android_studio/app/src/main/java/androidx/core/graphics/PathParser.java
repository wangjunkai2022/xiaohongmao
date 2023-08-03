package androidx.core.graphics;

import android.graphics.Path;
import android.util.Log;
import androidx.annotation.Nullable;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class PathParser {
    private static final String LOGTAG = "PathParser";

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class ExtractFloatResult {
        int mEndPosition;
        boolean mEndWithNegOrDot;

        ExtractFloatResult() {
        }
    }

    private PathParser() {
    }

    private static void addNode(ArrayList<PathDataNode> arrayList, char c10, float[] fArr) {
        arrayList.add(new PathDataNode(c10, fArr));
    }

    public static boolean canMorph(@Nullable PathDataNode[] pathDataNodeArr, @Nullable PathDataNode[] pathDataNodeArr2) {
        if (pathDataNodeArr == null || pathDataNodeArr2 == null || pathDataNodeArr.length != pathDataNodeArr2.length) {
            return false;
        }
        for (int i4 = 0; i4 < pathDataNodeArr.length; i4++) {
            if (pathDataNodeArr[i4].mType != pathDataNodeArr2[i4].mType || pathDataNodeArr[i4].mParams.length != pathDataNodeArr2[i4].mParams.length) {
                return false;
            }
        }
        return true;
    }

    static float[] copyOfRange(float[] fArr, int i4, int i10) {
        if (i4 <= i10) {
            int length = fArr.length;
            if (i4 >= 0 && i4 <= length) {
                int i11 = i10 - i4;
                int min = Math.min(i11, length - i4);
                float[] fArr2 = new float[i11];
                System.arraycopy(fArr, i4, fArr2, 0, min);
                return fArr2;
            }
            throw new ArrayIndexOutOfBoundsException();
        }
        throw new IllegalArgumentException();
    }

    public static PathDataNode[] createNodesFromPathData(String str) {
        if (str == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        int i4 = 1;
        int i10 = 0;
        while (i4 < str.length()) {
            int nextStart = nextStart(str, i4);
            String trim = str.substring(i10, nextStart).trim();
            if (trim.length() > 0) {
                addNode(arrayList, trim.charAt(0), getFloats(trim));
            }
            i10 = nextStart;
            i4 = nextStart + 1;
        }
        if (i4 - i10 == 1 && i10 < str.length()) {
            addNode(arrayList, str.charAt(i10), new float[0]);
        }
        return (PathDataNode[]) arrayList.toArray(new PathDataNode[arrayList.size()]);
    }

    public static Path createPathFromPathData(String str) {
        Path path = new Path();
        PathDataNode[] createNodesFromPathData = createNodesFromPathData(str);
        if (createNodesFromPathData != null) {
            try {
                PathDataNode.nodesToPath(createNodesFromPathData, path);
                return path;
            } catch (RuntimeException e4) {
                throw new RuntimeException("Error in parsing " + str, e4);
            }
        }
        return null;
    }

    public static PathDataNode[] deepCopyNodes(PathDataNode[] pathDataNodeArr) {
        if (pathDataNodeArr == null) {
            return null;
        }
        PathDataNode[] pathDataNodeArr2 = new PathDataNode[pathDataNodeArr.length];
        for (int i4 = 0; i4 < pathDataNodeArr.length; i4++) {
            pathDataNodeArr2[i4] = new PathDataNode(pathDataNodeArr[i4]);
        }
        return pathDataNodeArr2;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:24:0x003a A[LOOP:0: B:3:0x0007->B:24:0x003a, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:28:0x003d A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static void extract(java.lang.String r8, int r9, androidx.core.graphics.PathParser.ExtractFloatResult r10) {
        /*
            r0 = 0
            r10.mEndWithNegOrDot = r0
            r1 = r9
            r2 = 0
            r3 = 0
            r4 = 0
        L7:
            int r5 = r8.length()
            if (r1 >= r5) goto L3d
            char r5 = r8.charAt(r1)
            r6 = 32
            r7 = 1
            if (r5 == r6) goto L35
            r6 = 69
            if (r5 == r6) goto L33
            r6 = 101(0x65, float:1.42E-43)
            if (r5 == r6) goto L33
            switch(r5) {
                case 44: goto L35;
                case 45: goto L2a;
                case 46: goto L22;
                default: goto L21;
            }
        L21:
            goto L31
        L22:
            if (r3 != 0) goto L27
            r2 = 0
            r3 = 1
            goto L37
        L27:
            r10.mEndWithNegOrDot = r7
            goto L35
        L2a:
            if (r1 == r9) goto L31
            if (r2 != 0) goto L31
            r10.mEndWithNegOrDot = r7
            goto L35
        L31:
            r2 = 0
            goto L37
        L33:
            r2 = 1
            goto L37
        L35:
            r2 = 0
            r4 = 1
        L37:
            if (r4 == 0) goto L3a
            goto L3d
        L3a:
            int r1 = r1 + 1
            goto L7
        L3d:
            r10.mEndPosition = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.graphics.PathParser.extract(java.lang.String, int, androidx.core.graphics.PathParser$ExtractFloatResult):void");
    }

    private static float[] getFloats(String str) {
        if (str.charAt(0) == 'z' || str.charAt(0) == 'Z') {
            return new float[0];
        }
        try {
            float[] fArr = new float[str.length()];
            ExtractFloatResult extractFloatResult = new ExtractFloatResult();
            int length = str.length();
            int i4 = 1;
            int i10 = 0;
            while (i4 < length) {
                extract(str, i4, extractFloatResult);
                int i11 = extractFloatResult.mEndPosition;
                if (i4 < i11) {
                    fArr[i10] = Float.parseFloat(str.substring(i4, i11));
                    i10++;
                }
                i4 = extractFloatResult.mEndWithNegOrDot ? i11 : i11 + 1;
            }
            return copyOfRange(fArr, 0, i10);
        } catch (NumberFormatException e4) {
            throw new RuntimeException("error in parsing \"" + str + "\"", e4);
        }
    }

    public static boolean interpolatePathDataNodes(PathDataNode[] pathDataNodeArr, PathDataNode[] pathDataNodeArr2, PathDataNode[] pathDataNodeArr3, float f10) {
        if (pathDataNodeArr != null && pathDataNodeArr2 != null && pathDataNodeArr3 != null) {
            if (pathDataNodeArr.length == pathDataNodeArr2.length && pathDataNodeArr2.length == pathDataNodeArr3.length) {
                if (canMorph(pathDataNodeArr2, pathDataNodeArr3)) {
                    for (int i4 = 0; i4 < pathDataNodeArr.length; i4++) {
                        pathDataNodeArr[i4].interpolatePathDataNode(pathDataNodeArr2[i4], pathDataNodeArr3[i4], f10);
                    }
                    return true;
                }
                return false;
            }
            throw new IllegalArgumentException("The nodes to be interpolated and resulting nodes must have the same length");
        }
        throw new IllegalArgumentException("The nodes to be interpolated and resulting nodes cannot be null");
    }

    private static int nextStart(String str, int i4) {
        while (i4 < str.length()) {
            char charAt = str.charAt(i4);
            if (((charAt - 'A') * (charAt - 'Z') <= 0 || (charAt - 'a') * (charAt - 'z') <= 0) && charAt != 'e' && charAt != 'E') {
                return i4;
            }
            i4++;
        }
        return i4;
    }

    public static void updateNodes(PathDataNode[] pathDataNodeArr, PathDataNode[] pathDataNodeArr2) {
        for (int i4 = 0; i4 < pathDataNodeArr2.length; i4++) {
            pathDataNodeArr[i4].mType = pathDataNodeArr2[i4].mType;
            for (int i10 = 0; i10 < pathDataNodeArr2[i4].mParams.length; i10++) {
                pathDataNodeArr[i4].mParams[i10] = pathDataNodeArr2[i4].mParams[i10];
            }
        }
    }

    /* loaded from: classes.dex */
    public static class PathDataNode {
        public float[] mParams;
        public char mType;

        PathDataNode(char c10, float[] fArr) {
            this.mType = c10;
            this.mParams = fArr;
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        private static void addCommand(Path path, float[] fArr, char c10, char c11, float[] fArr2) {
            int i4;
            int i10;
            float f10;
            float f11;
            float f12;
            float f13;
            float f14;
            float f15;
            float f16;
            float f17;
            char c12 = c11;
            float f18 = fArr[0];
            float f19 = fArr[1];
            float f20 = fArr[2];
            float f21 = fArr[3];
            float f22 = fArr[4];
            float f23 = fArr[5];
            switch (c12) {
                case 'A':
                case 'a':
                    i4 = 7;
                    break;
                case 'C':
                case 'c':
                    i4 = 6;
                    break;
                case 'H':
                case 'V':
                case 'h':
                case 'v':
                    i4 = 1;
                    break;
                case 'L':
                case 'M':
                case 'T':
                case 'l':
                case 'm':
                case 't':
                default:
                    i4 = 2;
                    break;
                case 'Q':
                case 'S':
                case 'q':
                case 's':
                    i4 = 4;
                    break;
                case 'Z':
                case 'z':
                    path.close();
                    path.moveTo(f22, f23);
                    f18 = f22;
                    f20 = f18;
                    f19 = f23;
                    f21 = f19;
                    i4 = 2;
                    break;
            }
            float f24 = f18;
            float f25 = f19;
            float f26 = f22;
            float f27 = f23;
            int i11 = 0;
            char c13 = c10;
            while (i11 < fArr2.length) {
                if (c12 != 'A') {
                    if (c12 == 'C') {
                        i10 = i11;
                        int i12 = i10 + 2;
                        int i13 = i10 + 3;
                        int i14 = i10 + 4;
                        int i15 = i10 + 5;
                        path.cubicTo(fArr2[i10 + 0], fArr2[i10 + 1], fArr2[i12], fArr2[i13], fArr2[i14], fArr2[i15]);
                        f24 = fArr2[i14];
                        float f28 = fArr2[i15];
                        float f29 = fArr2[i12];
                        float f30 = fArr2[i13];
                        f25 = f28;
                        f21 = f30;
                        f20 = f29;
                    } else if (c12 == 'H') {
                        i10 = i11;
                        int i16 = i10 + 0;
                        path.lineTo(fArr2[i16], f25);
                        f24 = fArr2[i16];
                    } else if (c12 == 'Q') {
                        i10 = i11;
                        int i17 = i10 + 0;
                        int i18 = i10 + 1;
                        int i19 = i10 + 2;
                        int i20 = i10 + 3;
                        path.quadTo(fArr2[i17], fArr2[i18], fArr2[i19], fArr2[i20]);
                        float f31 = fArr2[i17];
                        float f32 = fArr2[i18];
                        f24 = fArr2[i19];
                        f25 = fArr2[i20];
                        f20 = f31;
                        f21 = f32;
                    } else if (c12 == 'V') {
                        i10 = i11;
                        int i21 = i10 + 0;
                        path.lineTo(f24, fArr2[i21]);
                        f25 = fArr2[i21];
                    } else if (c12 != 'a') {
                        if (c12 != 'c') {
                            if (c12 == 'h') {
                                int i22 = i11 + 0;
                                path.rLineTo(fArr2[i22], 0.0f);
                                f24 += fArr2[i22];
                            } else if (c12 != 'q') {
                                if (c12 == 'v') {
                                    int i23 = i11 + 0;
                                    path.rLineTo(0.0f, fArr2[i23]);
                                    f13 = fArr2[i23];
                                } else if (c12 == 'L') {
                                    int i24 = i11 + 0;
                                    int i25 = i11 + 1;
                                    path.lineTo(fArr2[i24], fArr2[i25]);
                                    f24 = fArr2[i24];
                                    f25 = fArr2[i25];
                                } else if (c12 == 'M') {
                                    int i26 = i11 + 0;
                                    f24 = fArr2[i26];
                                    int i27 = i11 + 1;
                                    f25 = fArr2[i27];
                                    if (i11 > 0) {
                                        path.lineTo(fArr2[i26], fArr2[i27]);
                                    } else {
                                        path.moveTo(fArr2[i26], fArr2[i27]);
                                        i10 = i11;
                                        f27 = f25;
                                        f26 = f24;
                                    }
                                } else if (c12 == 'S') {
                                    if (c13 == 'c' || c13 == 's' || c13 == 'C' || c13 == 'S') {
                                        f24 = (f24 * 2.0f) - f20;
                                        f25 = (f25 * 2.0f) - f21;
                                    }
                                    float f33 = f25;
                                    int i28 = i11 + 0;
                                    int i29 = i11 + 1;
                                    int i30 = i11 + 2;
                                    int i31 = i11 + 3;
                                    path.cubicTo(f24, f33, fArr2[i28], fArr2[i29], fArr2[i30], fArr2[i31]);
                                    f10 = fArr2[i28];
                                    f11 = fArr2[i29];
                                    f24 = fArr2[i30];
                                    f25 = fArr2[i31];
                                    f20 = f10;
                                    f21 = f11;
                                } else if (c12 == 'T') {
                                    if (c13 == 'q' || c13 == 't' || c13 == 'Q' || c13 == 'T') {
                                        f24 = (f24 * 2.0f) - f20;
                                        f25 = (f25 * 2.0f) - f21;
                                    }
                                    int i32 = i11 + 0;
                                    int i33 = i11 + 1;
                                    path.quadTo(f24, f25, fArr2[i32], fArr2[i33]);
                                    float f34 = fArr2[i32];
                                    float f35 = fArr2[i33];
                                    i10 = i11;
                                    f21 = f25;
                                    f20 = f24;
                                    f24 = f34;
                                    f25 = f35;
                                } else if (c12 == 'l') {
                                    int i34 = i11 + 0;
                                    int i35 = i11 + 1;
                                    path.rLineTo(fArr2[i34], fArr2[i35]);
                                    f24 += fArr2[i34];
                                    f13 = fArr2[i35];
                                } else if (c12 == 'm') {
                                    int i36 = i11 + 0;
                                    f24 += fArr2[i36];
                                    int i37 = i11 + 1;
                                    f25 += fArr2[i37];
                                    if (i11 > 0) {
                                        path.rLineTo(fArr2[i36], fArr2[i37]);
                                    } else {
                                        path.rMoveTo(fArr2[i36], fArr2[i37]);
                                        i10 = i11;
                                        f27 = f25;
                                        f26 = f24;
                                    }
                                } else if (c12 == 's') {
                                    if (c13 == 'c' || c13 == 's' || c13 == 'C' || c13 == 'S') {
                                        float f36 = f24 - f20;
                                        f14 = f25 - f21;
                                        f15 = f36;
                                    } else {
                                        f15 = 0.0f;
                                        f14 = 0.0f;
                                    }
                                    int i38 = i11 + 0;
                                    int i39 = i11 + 1;
                                    int i40 = i11 + 2;
                                    int i41 = i11 + 3;
                                    path.rCubicTo(f15, f14, fArr2[i38], fArr2[i39], fArr2[i40], fArr2[i41]);
                                    f10 = fArr2[i38] + f24;
                                    f11 = fArr2[i39] + f25;
                                    f24 += fArr2[i40];
                                    f12 = fArr2[i41];
                                } else if (c12 == 't') {
                                    if (c13 == 'q' || c13 == 't' || c13 == 'Q' || c13 == 'T') {
                                        f16 = f24 - f20;
                                        f17 = f25 - f21;
                                    } else {
                                        f17 = 0.0f;
                                        f16 = 0.0f;
                                    }
                                    int i42 = i11 + 0;
                                    int i43 = i11 + 1;
                                    path.rQuadTo(f16, f17, fArr2[i42], fArr2[i43]);
                                    float f37 = f16 + f24;
                                    float f38 = f17 + f25;
                                    f24 += fArr2[i42];
                                    f25 += fArr2[i43];
                                    f21 = f38;
                                    f20 = f37;
                                }
                                f25 += f13;
                            } else {
                                int i44 = i11 + 0;
                                int i45 = i11 + 1;
                                int i46 = i11 + 2;
                                int i47 = i11 + 3;
                                path.rQuadTo(fArr2[i44], fArr2[i45], fArr2[i46], fArr2[i47]);
                                f10 = fArr2[i44] + f24;
                                f11 = fArr2[i45] + f25;
                                f24 += fArr2[i46];
                                f12 = fArr2[i47];
                            }
                            i10 = i11;
                        } else {
                            int i48 = i11 + 2;
                            int i49 = i11 + 3;
                            int i50 = i11 + 4;
                            int i51 = i11 + 5;
                            path.rCubicTo(fArr2[i11 + 0], fArr2[i11 + 1], fArr2[i48], fArr2[i49], fArr2[i50], fArr2[i51]);
                            f10 = fArr2[i48] + f24;
                            f11 = fArr2[i49] + f25;
                            f24 += fArr2[i50];
                            f12 = fArr2[i51];
                        }
                        f25 += f12;
                        f20 = f10;
                        f21 = f11;
                        i10 = i11;
                    } else {
                        int i52 = i11 + 5;
                        int i53 = i11 + 6;
                        i10 = i11;
                        drawArc(path, f24, f25, fArr2[i52] + f24, fArr2[i53] + f25, fArr2[i11 + 0], fArr2[i11 + 1], fArr2[i11 + 2], fArr2[i11 + 3] != 0.0f, fArr2[i11 + 4] != 0.0f);
                        f24 += fArr2[i52];
                        f25 += fArr2[i53];
                    }
                    i11 = i10 + i4;
                    c13 = c11;
                    c12 = c13;
                } else {
                    i10 = i11;
                    int i54 = i10 + 5;
                    int i55 = i10 + 6;
                    drawArc(path, f24, f25, fArr2[i54], fArr2[i55], fArr2[i10 + 0], fArr2[i10 + 1], fArr2[i10 + 2], fArr2[i10 + 3] != 0.0f, fArr2[i10 + 4] != 0.0f);
                    f24 = fArr2[i54];
                    f25 = fArr2[i55];
                }
                f21 = f25;
                f20 = f24;
                i11 = i10 + i4;
                c13 = c11;
                c12 = c13;
            }
            fArr[0] = f24;
            fArr[1] = f25;
            fArr[2] = f20;
            fArr[3] = f21;
            fArr[4] = f26;
            fArr[5] = f27;
        }

        private static void arcToBezier(Path path, double d4, double d10, double d11, double d12, double d13, double d14, double d15, double d16, double d17) {
            double d18 = d11;
            int ceil = (int) Math.ceil(Math.abs((d17 * 4.0d) / 3.141592653589793d));
            double cos = Math.cos(d15);
            double sin = Math.sin(d15);
            double cos2 = Math.cos(d16);
            double sin2 = Math.sin(d16);
            double d19 = -d18;
            double d20 = d19 * cos;
            double d21 = d12 * sin;
            double d22 = (d20 * sin2) - (d21 * cos2);
            double d23 = d19 * sin;
            double d24 = d12 * cos;
            double d25 = (sin2 * d23) + (cos2 * d24);
            double d26 = d17 / ceil;
            double d27 = d16;
            double d28 = d25;
            double d29 = d22;
            int i4 = 0;
            double d30 = d13;
            double d31 = d14;
            while (i4 < ceil) {
                double d32 = d27 + d26;
                double sin3 = Math.sin(d32);
                double cos3 = Math.cos(d32);
                double d33 = (d4 + ((d18 * cos) * cos3)) - (d21 * sin3);
                double d34 = d10 + (d18 * sin * cos3) + (d24 * sin3);
                double d35 = (d20 * sin3) - (d21 * cos3);
                double d36 = (sin3 * d23) + (cos3 * d24);
                double d37 = d32 - d27;
                double tan = Math.tan(d37 / 2.0d);
                double sin4 = (Math.sin(d37) * (Math.sqrt(((tan * 3.0d) * tan) + 4.0d) - 1.0d)) / 3.0d;
                double d38 = d30 + (d29 * sin4);
                double d39 = cos;
                double d40 = sin;
                path.rLineTo(0.0f, 0.0f);
                path.cubicTo((float) d38, (float) (d31 + (d28 * sin4)), (float) (d33 - (sin4 * d35)), (float) (d34 - (sin4 * d36)), (float) d33, (float) d34);
                i4++;
                d26 = d26;
                sin = d40;
                d30 = d33;
                d23 = d23;
                cos = d39;
                d27 = d32;
                d28 = d36;
                d29 = d35;
                ceil = ceil;
                d31 = d34;
                d18 = d11;
            }
        }

        private static void drawArc(Path path, float f10, float f11, float f12, float f13, float f14, float f15, float f16, boolean z9, boolean z10) {
            double d4;
            double d10;
            double radians = Math.toRadians(f16);
            double cos = Math.cos(radians);
            double sin = Math.sin(radians);
            double d11 = f10;
            double d12 = d11 * cos;
            double d13 = f11;
            double d14 = f14;
            double d15 = (d12 + (d13 * sin)) / d14;
            double d16 = f15;
            double d17 = (((-f10) * sin) + (d13 * cos)) / d16;
            double d18 = f13;
            double d19 = ((f12 * cos) + (d18 * sin)) / d14;
            double d20 = (((-f12) * sin) + (d18 * cos)) / d16;
            double d21 = d15 - d19;
            double d22 = d17 - d20;
            double d23 = (d15 + d19) / 2.0d;
            double d24 = (d17 + d20) / 2.0d;
            double d25 = (d21 * d21) + (d22 * d22);
            if (d25 == 0.0d) {
                Log.w(PathParser.LOGTAG, " Points are coincident");
                return;
            }
            double d26 = (1.0d / d25) - 0.25d;
            if (d26 < 0.0d) {
                Log.w(PathParser.LOGTAG, "Points are too far apart " + d25);
                float sqrt = (float) (Math.sqrt(d25) / 1.99999d);
                drawArc(path, f10, f11, f12, f13, f14 * sqrt, f15 * sqrt, f16, z9, z10);
                return;
            }
            double sqrt2 = Math.sqrt(d26);
            double d27 = d21 * sqrt2;
            double d28 = sqrt2 * d22;
            if (z9 == z10) {
                d4 = d23 - d28;
                d10 = d24 + d27;
            } else {
                d4 = d23 + d28;
                d10 = d24 - d27;
            }
            double atan2 = Math.atan2(d17 - d10, d15 - d4);
            double atan22 = Math.atan2(d20 - d10, d19 - d4) - atan2;
            int i4 = (atan22 > 0.0d ? 1 : (atan22 == 0.0d ? 0 : -1));
            if (z10 != (i4 >= 0)) {
                atan22 = i4 > 0 ? atan22 - 6.283185307179586d : atan22 + 6.283185307179586d;
            }
            double d29 = d4 * d14;
            double d30 = d10 * d16;
            arcToBezier(path, (d29 * cos) - (d30 * sin), (d29 * sin) + (d30 * cos), d14, d16, d11, d13, radians, atan2, atan22);
        }

        public static void nodesToPath(PathDataNode[] pathDataNodeArr, Path path) {
            float[] fArr = new float[6];
            char c10 = 'm';
            for (int i4 = 0; i4 < pathDataNodeArr.length; i4++) {
                addCommand(path, fArr, c10, pathDataNodeArr[i4].mType, pathDataNodeArr[i4].mParams);
                c10 = pathDataNodeArr[i4].mType;
            }
        }

        public void interpolatePathDataNode(PathDataNode pathDataNode, PathDataNode pathDataNode2, float f10) {
            this.mType = pathDataNode.mType;
            int i4 = 0;
            while (true) {
                float[] fArr = pathDataNode.mParams;
                if (i4 >= fArr.length) {
                    return;
                }
                this.mParams[i4] = (fArr[i4] * (1.0f - f10)) + (pathDataNode2.mParams[i4] * f10);
                i4++;
            }
        }

        PathDataNode(PathDataNode pathDataNode) {
            this.mType = pathDataNode.mType;
            float[] fArr = pathDataNode.mParams;
            this.mParams = PathParser.copyOfRange(fArr, 0, fArr.length);
        }
    }
}
