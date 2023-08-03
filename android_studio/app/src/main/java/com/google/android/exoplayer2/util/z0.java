package com.google.android.exoplayer2.util;

import android.app.Activity;
import android.app.UiModeManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.database.DatabaseUtils;
import android.database.sqlite.SQLiteDatabase;
import android.graphics.Point;
import android.hardware.display.DisplayManager;
import android.net.Uri;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.Parcel;
import android.os.SystemClock;
import android.security.NetworkSecurityPolicy;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.Base64;
import android.util.SparseLongArray;
import android.view.Display;
import android.view.WindowManager;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.exifinterface.media.ExifInterface;
import androidx.recyclerview.widget.ItemTouchHelper;
import com.facebook.common.callercontext.ContextChain;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.b1;
import com.google.mlkit.common.MlKitException;
import com.ksyun.media.streamer.logstats.StatsConstant;
import io.sentry.protocol.y;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.math.BigDecimal;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayDeque;
import java.util.Arrays;
import java.util.Collections;
import java.util.Formatter;
import java.util.GregorianCalendar;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.MissingResourceException;
import java.util.NoSuchElementException;
import java.util.TimeZone;
import java.util.UUID;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.zip.DataFormatException;
import java.util.zip.GZIPOutputStream;
import java.util.zip.Inflater;
import org.bouncycastle.math.Primes;
import org.checkerframework.checker.nullness.qual.EnsuresNonNull;

/* compiled from: Util.java */
/* loaded from: classes2.dex */
public final class z0 {

    /* renamed from: a  reason: collision with root package name */
    public static final int f27743a;

    /* renamed from: b  reason: collision with root package name */
    public static final String f27744b;

    /* renamed from: c  reason: collision with root package name */
    public static final String f27745c;

    /* renamed from: d  reason: collision with root package name */
    public static final String f27746d;

    /* renamed from: e  reason: collision with root package name */
    public static final String f27747e;

    /* renamed from: f  reason: collision with root package name */
    public static final byte[] f27748f;

    /* renamed from: g  reason: collision with root package name */
    private static final String f27749g = "Util";

    /* renamed from: h  reason: collision with root package name */
    private static final Pattern f27750h;

    /* renamed from: i  reason: collision with root package name */
    private static final Pattern f27751i;

    /* renamed from: j  reason: collision with root package name */
    private static final Pattern f27752j;

    /* renamed from: k  reason: collision with root package name */
    private static final Pattern f27753k;

    /* renamed from: l  reason: collision with root package name */
    private static final String f27754l = "format=m3u8-aapl";

    /* renamed from: m  reason: collision with root package name */
    private static final String f27755m = "format=mpd-time-csf";
    @Nullable

    /* renamed from: n  reason: collision with root package name */
    private static HashMap<String, String> f27756n;

    /* renamed from: o  reason: collision with root package name */
    private static final String[] f27757o;

    /* renamed from: p  reason: collision with root package name */
    private static final String[] f27758p;

    /* renamed from: q  reason: collision with root package name */
    private static final int[] f27759q;

    /* renamed from: r  reason: collision with root package name */
    private static final int[] f27760r;

    static {
        int i4;
        String str = Build.VERSION.CODENAME;
        if (ExifInterface.LATITUDE_SOUTH.equals(str)) {
            i4 = 31;
        } else {
            i4 = "R".equals(str) ? 30 : Build.VERSION.SDK_INT;
        }
        f27743a = i4;
        String str2 = Build.DEVICE;
        f27744b = str2;
        String str3 = Build.MANUFACTURER;
        f27745c = str3;
        String str4 = Build.MODEL;
        f27746d = str4;
        StringBuilder sb = new StringBuilder(String.valueOf(str2).length() + 17 + String.valueOf(str4).length() + String.valueOf(str3).length());
        sb.append(str2);
        sb.append(", ");
        sb.append(str4);
        sb.append(", ");
        sb.append(str3);
        sb.append(", ");
        sb.append(i4);
        f27747e = sb.toString();
        f27748f = new byte[0];
        f27750h = Pattern.compile("(\\d\\d\\d\\d)\\-(\\d\\d)\\-(\\d\\d)[Tt](\\d\\d):(\\d\\d):(\\d\\d)([\\.,](\\d+))?([Zz]|((\\+|\\-)(\\d?\\d):?(\\d\\d)))?");
        f27751i = Pattern.compile("^(-)?P(([0-9]*)Y)?(([0-9]*)M)?(([0-9]*)D)?(T(([0-9]*)H)?(([0-9]*)M)?(([0-9.]*)S)?)?$");
        f27752j = Pattern.compile("%([A-Fa-f0-9]{2})");
        f27753k = Pattern.compile(".*\\.isml?(?:/(manifest(.*))?)?");
        f27757o = new String[]{"alb", "sq", "arm", "hy", "baq", "eu", "bur", "my", "tib", "bo", "chi", "zh", "cze", "cs", "dut", "nl", "ger", "de", "gre", "el", "fre", "fr", "geo", "ka", "ice", "is", com.ksyun.media.player.d.d.f45440l, "mk", "mao", "mi", "may", "ms", "per", "fa", "rum", "ro", "scc", "hbs-srp", "slo", "sk", "wel", "cy", "id", "ms-ind", "iw", "he", "heb", "he", "ji", "yi", "in", "ms-ind", "ind", "ms-ind", "nb", "no-nob", "nob", "no-nob", "nn", "no-nno", "nno", "no-nno", "tw", "ak-twi", "twi", "ak-twi", "bs", "hbs-bos", "bos", "hbs-bos", "hr", "hbs-hrv", "hrv", "hbs-hrv", "sr", "hbs-srp", "srp", "hbs-srp", "cmn", "zh-cmn", "hak", "zh-hak", "nan", "zh-nan", "hsn", "zh-hsn"};
        f27758p = new String[]{"i-lux", "lb", "i-hak", "zh-hak", "i-navajo", "nv", "no-bok", "no-nob", "no-nyn", "no-nno", "zh-guoyu", "zh-cmn", "zh-hakka", "zh-hak", "zh-min-nan", "zh-nan", "zh-xiang", "zh-hsn"};
        f27759q = new int[]{0, 79764919, 159529838, 222504665, 319059676, 398814059, 445009330, 507990021, 638119352, 583659535, 797628118, 726387553, 890018660, 835552979, 1015980042, 944750013, 1276238704, 1221641927, 1167319070, 1095957929, 1595256236, 1540665371, 1452775106, 1381403509, 1780037320, 1859660671, 1671105958, 1733955601, 2031960084, 2111593891, 1889500026, 1952343757, -1742489888, -1662866601, -1851683442, -1788833735, -1960329156, -1880695413, -2103051438, -2040207643, -1104454824, -1159051537, -1213636554, -1284997759, -1389417084, -1444007885, -1532160278, -1603531939, -734892656, -789352409, -575645954, -646886583, -952755380, -1007220997, -827056094, -898286187, -231047128, -151282273, -71779514, -8804623, -515967244, -436212925, -390279782, -327299027, 881225847, 809987520, 1023691545, 969234094, 662832811, 591600412, 771767749, 717299826, 311336399, 374308984, 453813921, 533576470, 25881363, 88864420, 134795389, 214552010, 2023205639, 2086057648, 1897238633, 1976864222, 1804852699, 1867694188, 1645340341, 1724971778, 1587496639, 1516133128, 1461550545, 1406951526, 1302016099, 1230646740, 1142491917, 1087903418, -1398421865, -1469785312, -1524105735, -1578704818, -1079922613, -1151291908, -1239184603, -1293773166, -1968362705, -1905510760, -2094067647, -2014441994, -1716953613, -1654112188, -1876203875, -1796572374, -525066777, -462094256, -382327159, -302564546, -206542021, -143559028, -97365931, -17609246, -960696225, -1031934488, -817968335, -872425850, -709327229, -780559564, -600130067, -654598054, 1762451694, 1842216281, 1619975040, 1682949687, 2047383090, 2127137669, 1938468188, 2001449195, 1325665622, 1271206113, 1183200824, 1111960463, 1543535498, 1489069629, 1434599652, 1363369299, 622672798, 568075817, 748617968, 677256519, 907627842, 853037301, 1067152940, 995781531, 51762726, 131386257, 177728840, 240578815, 269590778, 349224269, 429104020, 491947555, -248556018, -168932423, -122852000, -60002089, -500490030, -420856475, -341238852, -278395381, -685261898, -739858943, -559578920, -630940305, -1004286614, -1058877219, -845023740, -916395085, -1119974018, -1174433591, -1262701040, -1333941337, -1371866206, -1426332139, -1481064244, -1552294533, -1690935098, -1611170447, -1833673816, -1770699233, -2009983462, -1930228819, -2119160460, -2056179517, 1569362073, 1498123566, 1409854455, 1355396672, 1317987909, 1246755826, 1192025387, 1137557660, 2072149281, 2135122070, 1912620623, 1992383480, 1753615357, 1816598090, 1627664531, 1707420964, 295390185, 358241886, 404320391, 483945776, 43990325, 106832002, 186451547, 266083308, 932423249, 861060070, 1041341759, 986742920, 613929101, 542559546, 756411363, 701822548, -978770311, -1050133554, -869589737, -924188512, -693284699, -764654318, -550540341, -605129092, -475935807, -413084042, -366743377, -287118056, -257573603, -194731862, -114850189, -35218492, -1984365303, -1921392450, -2143631769, -2063868976, -1698919467, -1635936670, -1824608069, -1744851700, -1347415887, -1418654458, -1506661409, -1561119128, -1129027987, -1200260134, -1254728445, -1309196108};
        f27760r = new int[]{0, 7, 14, 9, 28, 27, 18, 21, 56, 63, 54, 49, 36, 35, 42, 45, 112, 119, 126, 121, 108, 107, 98, 101, 72, 79, 70, 65, 84, 83, 90, 93, 224, 231, 238, 233, 252, 251, 242, 245, com.facebook.imageutils.c.f13388c, 223, 214, 209, 196, 195, MlKitException.CODE_SCANNER_CAMERA_PERMISSION_NOT_GRANTED, MlKitException.CODE_SCANNER_PIPELINE_INITIALIZATION_ERROR, 144, 151, 158, 153, 140, 139, com.google.android.exoplayer2.extractor.ts.h0.I, 133, 168, 175, 166, 161, com.facebook.imagepipeline.common.e.f12205e, 179, 186, com.google.android.exoplayer2.extractor.ts.a0.f22979w, 199, 192, 201, MlKitException.CODE_SCANNER_PIPELINE_INFERENCE_ERROR, 219, 220, 213, 210, 255, 248, 241, 246, 227, 228, 237, 234, 183, 176, 185, 190, 171, com.google.android.exoplayer2.extractor.ts.h0.K, 165, 162, 143, 136, com.google.android.exoplayer2.extractor.ts.h0.G, com.google.android.exoplayer2.extractor.ts.h0.Q, 147, 148, 157, 154, 39, 32, 41, 46, 59, 60, 53, 50, 31, 24, 17, 22, 3, 4, 13, 10, 87, 80, 89, 94, 75, 76, 69, 66, 111, 104, 97, 102, 115, 116, 125, 122, 137, 142, com.google.android.exoplayer2.extractor.ts.h0.J, 128, 149, 146, 155, 156, 177, 182, 191, 184, 173, 170, 163, 164, 249, 254, 247, com.google.android.exoplayer2.extractor.ts.a0.A, 229, 226, 235, 236, 193, 198, MlKitException.CODE_SCANNER_GOOGLE_PLAY_SERVICES_VERSION_TOO_OLD, 200, 221, com.facebook.imageutils.c.f13391f, Primes.SMALL_FACTOR_LIMIT, 212, 105, 110, 103, 96, 117, 114, 123, 124, 81, 86, 95, 88, 77, 74, 67, 68, 25, 30, 23, 16, 5, 2, 11, 12, 33, 38, 47, 40, 61, 58, 51, 52, 78, 73, 64, 71, 82, 85, 92, 91, 118, 113, 120, 127, 106, 109, 100, 99, 62, 57, 48, 55, 34, 37, 44, 43, 6, 1, 8, 15, 26, 29, 20, 19, 174, 169, com.qennnsad.aknkaksd.util.a1.f54532a, 167, 178, 181, 188, 187, 150, 145, 152, 159, com.google.android.exoplayer2.extractor.ts.h0.H, 141, 132, 131, 222, com.facebook.imageutils.c.f13390e, com.facebook.imageutils.c.f13394i, com.facebook.imageutils.c.f13395j, 194, 197, 204, 203, 230, com.facebook.imageutils.c.f13392g, 232, 239, ItemTouchHelper.Callback.DEFAULT_SWIPE_ANIMATION_DURATION, 253, 244, 243};
    }

    private z0() {
    }

    public static Handler A(@Nullable Handler.Callback callback) {
        return y((Looper) a.k(Looper.myLooper()), callback);
    }

    public static boolean A0(h0 h0Var, h0 h0Var2, @Nullable Inflater inflater) {
        if (h0Var.a() <= 0) {
            return false;
        }
        if (h0Var2.b() < h0Var.a()) {
            h0Var2.c(h0Var.a() * 2);
        }
        if (inflater == null) {
            inflater = new Inflater();
        }
        inflater.setInput(h0Var.d(), h0Var.e(), h0Var.a());
        int i4 = 0;
        while (true) {
            try {
                i4 += inflater.inflate(h0Var2.d(), i4, h0Var2.b() - i4);
                if (inflater.finished()) {
                    h0Var2.R(i4);
                    return true;
                } else if (inflater.needsDictionary() || inflater.needsInput()) {
                    break;
                } else if (i4 == h0Var2.b()) {
                    h0Var2.c(h0Var2.b() * 2);
                }
            } catch (DataFormatException unused) {
                return false;
            } finally {
                inflater.reset();
            }
        }
        return false;
    }

    public static Handler B() {
        return C(null);
    }

    public static boolean B0(int i4) {
        return i4 == 536870912 || i4 == 805306368 || i4 == 4;
    }

    public static Handler C(@Nullable Handler.Callback callback) {
        return y(X(), callback);
    }

    public static boolean C0(int i4) {
        return i4 == 3 || i4 == 2 || i4 == 268435456 || i4 == 536870912 || i4 == 805306368 || i4 == 4;
    }

    private static HashMap<String, String> D() {
        String[] iSOLanguages = Locale.getISOLanguages();
        HashMap<String, String> hashMap = new HashMap<>(iSOLanguages.length + f27757o.length);
        int i4 = 0;
        for (String str : iSOLanguages) {
            try {
                String iSO3Language = new Locale(str).getISO3Language();
                if (!TextUtils.isEmpty(iSO3Language)) {
                    hashMap.put(iSO3Language, str);
                }
            } catch (MissingResourceException unused) {
            }
        }
        while (true) {
            String[] strArr = f27757o;
            if (i4 >= strArr.length) {
                return hashMap;
            }
            hashMap.put(strArr[i4], strArr[i4 + 1]);
            i4 += 2;
        }
    }

    public static boolean D0(int i4) {
        return i4 == 10 || i4 == 13;
    }

    public static File E(Context context, String str) throws IOException {
        File F = F(context, str);
        F.delete();
        F.mkdir();
        return F;
    }

    public static boolean E0(Uri uri) {
        String scheme = uri.getScheme();
        return TextUtils.isEmpty(scheme) || "file".equals(scheme);
    }

    public static File F(Context context, String str) throws IOException {
        return File.createTempFile(str, null, (File) a.g(context.getCacheDir()));
    }

    @RequiresApi(api = 24)
    private static boolean F0(Uri uri) {
        return "http".equals(uri.getScheme()) && !NetworkSecurityPolicy.getInstance().isCleartextTrafficPermitted((String) a.g(uri.getHost()));
    }

    public static String G(String str) {
        int length = str.length();
        int i4 = 0;
        int i10 = 0;
        for (int i11 = 0; i11 < length; i11++) {
            if (i1(str.charAt(i11))) {
                i10++;
            }
        }
        if (i10 == 0) {
            return str;
        }
        StringBuilder sb = new StringBuilder((i10 * 2) + length);
        while (i10 > 0) {
            int i12 = i4 + 1;
            char charAt = str.charAt(i4);
            if (i1(charAt)) {
                sb.append('%');
                sb.append(Integer.toHexString(charAt));
                i10--;
            } else {
                sb.append(charAt);
            }
            i4 = i12;
        }
        if (i4 < length) {
            sb.append((CharSequence) str, i4, length);
        }
        return sb.toString();
    }

    public static boolean G0(Context context) {
        UiModeManager uiModeManager = (UiModeManager) context.getApplicationContext().getSystemService("uimode");
        return uiModeManager != null && uiModeManager.getCurrentModeType() == 4;
    }

    public static Uri H(Uri uri) {
        String path = uri.getPath();
        if (path == null) {
            return uri;
        }
        Matcher matcher = f27753k.matcher(com.google.common.base.c.g(path));
        return (matcher.matches() && matcher.group(1) == null) ? Uri.withAppendedPath(uri, "Manifest") : uri;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Thread H0(String str, Runnable runnable) {
        return new Thread(runnable, str);
    }

    public static String I(String str, Object... objArr) {
        return String.format(Locale.US, str, objArr);
    }

    public static int I0(int[] iArr, int i4) {
        for (int i10 = 0; i10 < iArr.length; i10++) {
            if (iArr[i10] == i4) {
                return i10;
            }
        }
        return -1;
    }

    public static String J(byte[] bArr) {
        return new String(bArr, com.google.common.base.e.f32190c);
    }

    public static int J0(long[] jArr, long j4) {
        for (int i4 = 0; i4 < jArr.length; i4++) {
            if (jArr[i4] == j4) {
                return i4;
            }
        }
        return -1;
    }

    public static String K(byte[] bArr, int i4, int i10) {
        return new String(bArr, i4, i10, com.google.common.base.e.f32190c);
    }

    private static String K0(String str) {
        int i4 = 0;
        while (true) {
            String[] strArr = f27758p;
            if (i4 >= strArr.length) {
                return str;
            }
            if (str.startsWith(strArr[i4])) {
                String valueOf = String.valueOf(strArr[i4 + 1]);
                String valueOf2 = String.valueOf(str.substring(strArr[i4].length()));
                return valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf);
            }
            i4 += 2;
        }
    }

    @Nullable
    public static String L(int i4) {
        if (i4 != 0) {
            if (i4 != 1) {
                if (i4 != 2) {
                    return null;
                }
                return a0.f27452k0;
            }
            return a0.f27454l0;
        }
        return a0.f27450j0;
    }

    public static boolean L0(Activity activity, Uri... uriArr) {
        if (f27743a < 23) {
            return false;
        }
        for (Uri uri : uriArr) {
            if (E0(uri)) {
                return e1(activity);
            }
        }
        return false;
    }

    public static int M(int i4) {
        if (i4 != 0) {
            return (i4 == 1 || i4 == 2 || i4 == 4 || i4 == 5 || i4 == 8) ? 4 : 2;
        }
        return 1;
    }

    public static boolean M0(Activity activity, com.google.android.exoplayer2.b1... b1VarArr) {
        if (f27743a < 23) {
            return false;
        }
        for (com.google.android.exoplayer2.b1 b1Var : b1VarArr) {
            b1.g gVar = b1Var.f21439b;
            if (gVar != null) {
                if (E0(gVar.f21502a)) {
                    return e1(activity);
                }
                for (int i4 = 0; i4 < b1Var.f21439b.f21508g.size(); i4++) {
                    if (E0(b1Var.f21439b.f21508g.get(i4).f21510a)) {
                        return e1(activity);
                    }
                }
                continue;
            }
        }
        return false;
    }

    public static int N(int i4) {
        switch (i4) {
            case 1:
                return 4;
            case 2:
                return 12;
            case 3:
                return 28;
            case 4:
                return 204;
            case 5:
                return 220;
            case 6:
                return 252;
            case 7:
                return 1276;
            case 8:
                int i10 = f27743a;
                return (i10 < 23 && i10 < 21) ? 0 : 6396;
            default:
                return 0;
        }
    }

    @RequiresApi(18)
    public static long N0(SparseLongArray sparseLongArray) {
        if (sparseLongArray.size() != 0) {
            long j4 = Long.MAX_VALUE;
            for (int i4 = 0; i4 < sparseLongArray.size(); i4++) {
                j4 = Math.min(j4, sparseLongArray.valueAt(i4));
            }
            return j4;
        }
        throw new NoSuchElementException();
    }

    public static int O(int i4) {
        if (i4 != 0) {
            if (i4 != 1) {
                if (i4 != 2) {
                    int i10 = 4;
                    if (i4 != 4) {
                        i10 = 5;
                        if (i4 != 5) {
                            return i4 != 8 ? 1 : 3;
                        }
                    }
                    return i10;
                }
                return 6;
            }
            return 13;
        }
        return 2;
    }

    public static <T> void O0(List<T> list, int i4, int i10, int i11) {
        ArrayDeque arrayDeque = new ArrayDeque();
        for (int i12 = (i10 - i4) - 1; i12 >= 0; i12--) {
            arrayDeque.addFirst(list.remove(i4 + i12));
        }
        list.addAll(Math.min(i11, list.size()), arrayDeque);
    }

    public static int P(ByteBuffer byteBuffer, int i4) {
        int i10 = byteBuffer.getInt(i4);
        return byteBuffer.order() == ByteOrder.BIG_ENDIAN ? i10 : Integer.reverseBytes(i10);
    }

    public static ExecutorService P0(final String str) {
        return Executors.newSingleThreadExecutor(new ThreadFactory() { // from class: com.google.android.exoplayer2.util.y0
            @Override // java.util.concurrent.ThreadFactory
            public final Thread newThread(Runnable runnable) {
                Thread H0;
                H0 = z0.H0(str, runnable);
                return H0;
            }
        });
    }

    public static byte[] Q(String str) {
        int length = str.length() / 2;
        byte[] bArr = new byte[length];
        for (int i4 = 0; i4 < length; i4++) {
            int i10 = i4 * 2;
            bArr[i4] = (byte) ((Character.digit(str.charAt(i10), 16) << 4) + Character.digit(str.charAt(i10 + 1), 16));
        }
        return bArr;
    }

    public static String Q0(String str) {
        if (str == null) {
            return null;
        }
        String replace = str.replace('_', shaded.org.apache.commons.codec.language.l.f93713d);
        if (!replace.isEmpty() && !replace.equals("und")) {
            str = replace;
        }
        String g4 = com.google.common.base.c.g(str);
        String str2 = m1(g4, "-")[0];
        if (f27756n == null) {
            f27756n = D();
        }
        String str3 = f27756n.get(str2);
        if (str3 != null) {
            String valueOf = String.valueOf(g4.substring(str2.length()));
            g4 = valueOf.length() != 0 ? str3.concat(valueOf) : new String(str3);
            str2 = str3;
        }
        return ("no".equals(str2) || ContextChain.TAG_INFRA.equals(str2) || "zh".equals(str2)) ? K0(g4) : g4;
    }

    public static int R(@Nullable String str, int i4) {
        int i10 = 0;
        for (String str2 : n1(str)) {
            if (i4 == a0.n(str2)) {
                i10++;
            }
        }
        return i10;
    }

    public static <T> T[] R0(T[] tArr, T t9) {
        Object[] copyOf = Arrays.copyOf(tArr, tArr.length + 1);
        copyOf[tArr.length] = t9;
        return (T[]) l(copyOf);
    }

    @Nullable
    public static String S(@Nullable String str, int i4) {
        String[] n12 = n1(str);
        if (n12.length == 0) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        for (String str2 : n12) {
            if (i4 == a0.n(str2)) {
                if (sb.length() > 0) {
                    sb.append(",");
                }
                sb.append(str2);
            }
        }
        if (sb.length() > 0) {
            return sb.toString();
        }
        return null;
    }

    public static <T> T[] S0(T[] tArr, T[] tArr2) {
        T[] tArr3 = (T[]) Arrays.copyOf(tArr, tArr.length + tArr2.length);
        System.arraycopy(tArr2, 0, tArr3, tArr.length, tArr2.length);
        return tArr3;
    }

    public static String T(Object[] objArr) {
        StringBuilder sb = new StringBuilder();
        for (int i4 = 0; i4 < objArr.length; i4++) {
            sb.append(objArr[i4].getClass().getSimpleName());
            if (i4 < objArr.length - 1) {
                sb.append(", ");
            }
        }
        return sb.toString();
    }

    public static <T> T[] T0(T[] tArr, int i4) {
        a.a(i4 <= tArr.length);
        return (T[]) Arrays.copyOf(tArr, i4);
    }

    public static String U(@Nullable Context context) {
        TelephonyManager telephonyManager;
        if (context != null && (telephonyManager = (TelephonyManager) context.getSystemService("phone")) != null) {
            String networkCountryIso = telephonyManager.getNetworkCountryIso();
            if (!TextUtils.isEmpty(networkCountryIso)) {
                return com.google.common.base.c.j(networkCountryIso);
            }
        }
        return com.google.common.base.c.j(Locale.getDefault().getCountry());
    }

    public static <T> T[] U0(T[] tArr, int i4, int i10) {
        a.a(i4 >= 0);
        a.a(i10 <= tArr.length);
        return (T[]) Arrays.copyOfRange(tArr, i4, i10);
    }

    public static Point V(Context context) {
        DisplayManager displayManager;
        Display display = (f27743a < 17 || (displayManager = (DisplayManager) context.getSystemService("display")) == null) ? null : displayManager.getDisplay(0);
        if (display == null) {
            display = ((WindowManager) a.g((WindowManager) context.getSystemService("window"))).getDefaultDisplay();
        }
        return W(context, display);
    }

    public static <T> void V0(List<T> list, T[] tArr) {
        a.i(list.size() == tArr.length);
        list.toArray(tArr);
    }

    public static Point W(Context context, Display display) {
        String r02;
        int i4 = f27743a;
        if (i4 <= 29 && display.getDisplayId() == 0 && G0(context)) {
            if ("Sony".equals(f27745c) && f27746d.startsWith("BRAVIA") && context.getPackageManager().hasSystemFeature("com.sony.dtv.hardware.panel.qfhd")) {
                return new Point(3840, 2160);
            }
            if (i4 < 28) {
                r02 = r0("sys.display-size");
            } else {
                r02 = r0("vendor.display-size");
            }
            if (!TextUtils.isEmpty(r02)) {
                try {
                    String[] l12 = l1(r02.trim(), y.b.f83919g);
                    if (l12.length == 2) {
                        int parseInt = Integer.parseInt(l12[0]);
                        int parseInt2 = Integer.parseInt(l12[1]);
                        if (parseInt > 0 && parseInt2 > 0) {
                            return new Point(parseInt, parseInt2);
                        }
                    }
                } catch (NumberFormatException unused) {
                }
                String valueOf = String.valueOf(r02);
                w.d(f27749g, valueOf.length() != 0 ? "Invalid display size: ".concat(valueOf) : new String("Invalid display size: "));
            }
        }
        Point point = new Point();
        int i10 = f27743a;
        if (i10 >= 23) {
            b0(display, point);
        } else if (i10 >= 17) {
            a0(display, point);
        } else {
            Z(display, point);
        }
        return point;
    }

    public static long W0(String str) throws ParserException {
        Matcher matcher = f27750h.matcher(str);
        if (!matcher.matches()) {
            String valueOf = String.valueOf(str);
            throw new ParserException(valueOf.length() != 0 ? "Invalid date/time format: ".concat(valueOf) : new String("Invalid date/time format: "));
        }
        int i4 = 0;
        if (matcher.group(9) != null && !matcher.group(9).equalsIgnoreCase("Z")) {
            i4 = (Integer.parseInt(matcher.group(12)) * 60) + Integer.parseInt(matcher.group(13));
            if ("-".equals(matcher.group(11))) {
                i4 *= -1;
            }
        }
        GregorianCalendar gregorianCalendar = new GregorianCalendar(TimeZone.getTimeZone("GMT"));
        gregorianCalendar.clear();
        gregorianCalendar.set(Integer.parseInt(matcher.group(1)), Integer.parseInt(matcher.group(2)) - 1, Integer.parseInt(matcher.group(3)), Integer.parseInt(matcher.group(4)), Integer.parseInt(matcher.group(5)), Integer.parseInt(matcher.group(6)));
        if (!TextUtils.isEmpty(matcher.group(8))) {
            String valueOf2 = String.valueOf(matcher.group(8));
            gregorianCalendar.set(14, new BigDecimal(valueOf2.length() != 0 ? "0.".concat(valueOf2) : new String("0.")).movePointRight(3).intValue());
        }
        long timeInMillis = gregorianCalendar.getTimeInMillis();
        return i4 != 0 ? timeInMillis - (i4 * com.im.freechat.utils.e.f43748a) : timeInMillis;
    }

    public static Looper X() {
        Looper myLooper = Looper.myLooper();
        return myLooper != null ? myLooper : Looper.getMainLooper();
    }

    public static long X0(String str) {
        Matcher matcher = f27751i.matcher(str);
        if (matcher.matches()) {
            boolean isEmpty = true ^ TextUtils.isEmpty(matcher.group(1));
            String group = matcher.group(3);
            double parseDouble = group != null ? Double.parseDouble(group) * 3.1556908E7d : 0.0d;
            String group2 = matcher.group(5);
            double parseDouble2 = parseDouble + (group2 != null ? Double.parseDouble(group2) * 2629739.0d : 0.0d);
            String group3 = matcher.group(7);
            double parseDouble3 = parseDouble2 + (group3 != null ? Double.parseDouble(group3) * 86400.0d : 0.0d);
            String group4 = matcher.group(10);
            double parseDouble4 = parseDouble3 + (group4 != null ? Double.parseDouble(group4) * 3600.0d : 0.0d);
            String group5 = matcher.group(12);
            double parseDouble5 = parseDouble4 + (group5 != null ? Double.parseDouble(group5) * 60.0d : 0.0d);
            String group6 = matcher.group(14);
            long parseDouble6 = (long) ((parseDouble5 + (group6 != null ? Double.parseDouble(group6) : 0.0d)) * 1000.0d);
            return isEmpty ? -parseDouble6 : parseDouble6;
        }
        return (long) (Double.parseDouble(str) * 3600.0d * 1000.0d);
    }

    public static Uri Y(String str, String str2) {
        String encodeToString = Base64.encodeToString(str2.getBytes(), 2);
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 13 + String.valueOf(encodeToString).length());
        sb.append("data:");
        sb.append(str);
        sb.append(";base64,");
        sb.append(encodeToString);
        return Uri.parse(sb.toString());
    }

    public static boolean Y0(Handler handler, Runnable runnable) {
        if (handler.getLooper().getThread().isAlive()) {
            if (handler.getLooper() == Looper.myLooper()) {
                runnable.run();
                return true;
            }
            return handler.post(runnable);
        }
        return false;
    }

    private static void Z(Display display, Point point) {
        display.getSize(point);
    }

    public static boolean Z0(Parcel parcel) {
        return parcel.readInt() != 0;
    }

    @RequiresApi(17)
    private static void a0(Display display, Point point) {
        display.getRealSize(point);
    }

    public static byte[] a1(com.google.android.exoplayer2.upstream.m mVar, int i4) throws IOException {
        byte[] bArr = new byte[i4];
        int i10 = 0;
        while (i10 < i4) {
            int read = mVar.read(bArr, i10, i4 - i10);
            if (read == -1) {
                StringBuilder sb = new StringBuilder(56);
                sb.append("Not enough data could be read: ");
                sb.append(i10);
                sb.append(" < ");
                sb.append(i4);
                throw new IllegalStateException(sb.toString());
            }
            i10 += read;
        }
        return bArr;
    }

    public static long b(long j4, long j10, long j11) {
        long j12 = j4 + j10;
        return ((j4 ^ j12) & (j10 ^ j12)) < 0 ? j11 : j12;
    }

    @RequiresApi(23)
    private static void b0(Display display, Point point) {
        Display.Mode mode = display.getMode();
        point.x = mode.getPhysicalWidth();
        point.y = mode.getPhysicalHeight();
    }

    public static byte[] b1(com.google.android.exoplayer2.upstream.m mVar) throws IOException {
        byte[] bArr = new byte[1024];
        int i4 = 0;
        int i10 = 0;
        while (i4 != -1) {
            if (i10 == bArr.length) {
                bArr = Arrays.copyOf(bArr, bArr.length * 2);
            }
            i4 = mVar.read(bArr, i10, bArr.length - i10);
            if (i4 != -1) {
                i10 += i4;
            }
        }
        return Arrays.copyOf(bArr, i10);
    }

    public static boolean c(@Nullable Object obj, @Nullable Object obj2) {
        return obj == null ? obj2 == null : obj.equals(obj2);
    }

    @Nullable
    public static UUID c0(String str) {
        String g4 = com.google.common.base.c.g(str);
        g4.hashCode();
        char c10 = 65535;
        switch (g4.hashCode()) {
            case -1860423953:
                if (g4.equals("playready")) {
                    c10 = 0;
                    break;
                }
                break;
            case -1400551171:
                if (g4.equals("widevine")) {
                    c10 = 1;
                    break;
                }
                break;
            case 790309106:
                if (g4.equals("clearkey")) {
                    c10 = 2;
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
                return com.google.android.exoplayer2.i.M1;
            case 1:
                return com.google.android.exoplayer2.i.L1;
            case 2:
                return com.google.android.exoplayer2.i.K1;
            default:
                try {
                    return UUID.fromString(str);
                } catch (RuntimeException unused) {
                    return null;
                }
        }
    }

    public static void c1(File file) {
        File[] listFiles = file.listFiles();
        if (listFiles != null) {
            for (File file2 : listFiles) {
                c1(file2);
            }
        }
        file.delete();
    }

    public static <T extends Comparable<? super T>> int d(List<? extends Comparable<? super T>> list, T t9, boolean z9, boolean z10) {
        int i4;
        int binarySearch = Collections.binarySearch(list, t9);
        if (binarySearch < 0) {
            i4 = ~binarySearch;
        } else {
            int size = list.size();
            do {
                binarySearch++;
                if (binarySearch >= size) {
                    break;
                }
            } while (list.get(binarySearch).compareTo(t9) == 0);
            i4 = z9 ? binarySearch - 1 : binarySearch;
        }
        return z10 ? Math.min(list.size() - 1, i4) : i4;
    }

    public static int d0(String str) {
        int length = str.length();
        a.a(length <= 4);
        int i4 = 0;
        for (int i10 = 0; i10 < length; i10++) {
            i4 = (i4 << 8) | str.charAt(i10);
        }
        return i4;
    }

    public static <T> void d1(List<T> list, int i4, int i10) {
        if (i4 < 0 || i10 > list.size() || i4 > i10) {
            throw new IllegalArgumentException();
        }
        if (i4 != i10) {
            list.subList(i4, i10).clear();
        }
    }

    public static int e(int[] iArr, int i4, boolean z9, boolean z10) {
        int i10;
        int binarySearch = Arrays.binarySearch(iArr, i4);
        if (binarySearch < 0) {
            i10 = ~binarySearch;
        } else {
            do {
                binarySearch++;
                if (binarySearch >= iArr.length) {
                    break;
                }
            } while (iArr[binarySearch] == i4);
            i10 = z9 ? binarySearch - 1 : binarySearch;
        }
        return z10 ? Math.min(iArr.length - 1, i10) : i10;
    }

    public static String e0(Locale locale) {
        return f27743a >= 21 ? f0(locale) : locale.toString();
    }

    @RequiresApi(api = 23)
    private static boolean e1(Activity activity) {
        if (activity.checkSelfPermission("android.permission.READ_EXTERNAL_STORAGE") != 0) {
            activity.requestPermissions(new String[]{"android.permission.READ_EXTERNAL_STORAGE"}, 0);
            return true;
        }
        return false;
    }

    public static int f(long[] jArr, long j4, boolean z9, boolean z10) {
        int i4;
        int binarySearch = Arrays.binarySearch(jArr, j4);
        if (binarySearch < 0) {
            i4 = ~binarySearch;
        } else {
            do {
                binarySearch++;
                if (binarySearch >= jArr.length) {
                    break;
                }
            } while (jArr[binarySearch] == j4);
            i4 = z9 ? binarySearch - 1 : binarySearch;
        }
        return z10 ? Math.min(jArr.length - 1, i4) : i4;
    }

    @RequiresApi(21)
    private static String f0(Locale locale) {
        return locale.toLanguageTag();
    }

    public static long f1(long j4, long j10, long j11) {
        int i4 = (j11 > j10 ? 1 : (j11 == j10 ? 0 : -1));
        if (i4 >= 0 && j11 % j10 == 0) {
            return j4 / (j11 / j10);
        }
        if (i4 >= 0 || j10 % j11 != 0) {
            return (long) (j4 * (j10 / j11));
        }
        return j4 * (j10 / j11);
    }

    public static int g(x xVar, long j4, boolean z9, boolean z10) {
        int i4;
        int c10 = xVar.c() - 1;
        int i10 = 0;
        while (i10 <= c10) {
            int i11 = (i10 + c10) >>> 1;
            if (xVar.b(i11) < j4) {
                i10 = i11 + 1;
            } else {
                c10 = i11 - 1;
            }
        }
        if (z9 && (i4 = c10 + 1) < xVar.c() && xVar.b(i4) == j4) {
            return i4;
        }
        if (z10 && c10 == -1) {
            return 0;
        }
        return c10;
    }

    public static long g0(long j4, float f10) {
        return f10 == 1.0f ? j4 : Math.round(j4 * f10);
    }

    public static long[] g1(List<Long> list, long j4, long j10) {
        int size = list.size();
        long[] jArr = new long[size];
        int i4 = 0;
        int i10 = (j10 > j4 ? 1 : (j10 == j4 ? 0 : -1));
        if (i10 >= 0 && j10 % j4 == 0) {
            long j11 = j10 / j4;
            while (i4 < size) {
                jArr[i4] = list.get(i4).longValue() / j11;
                i4++;
            }
        } else if (i10 >= 0 || j4 % j10 != 0) {
            double d4 = j4 / j10;
            while (i4 < size) {
                jArr[i4] = (long) (list.get(i4).longValue() * d4);
                i4++;
            }
        } else {
            long j12 = j4 / j10;
            while (i4 < size) {
                jArr[i4] = list.get(i4).longValue() * j12;
                i4++;
            }
        }
        return jArr;
    }

    public static <T extends Comparable<? super T>> int h(List<? extends Comparable<? super T>> list, T t9, boolean z9, boolean z10) {
        int i4;
        int binarySearch = Collections.binarySearch(list, t9);
        if (binarySearch < 0) {
            i4 = -(binarySearch + 2);
        } else {
            do {
                binarySearch--;
                if (binarySearch < 0) {
                    break;
                }
            } while (list.get(binarySearch).compareTo(t9) == 0);
            i4 = z9 ? binarySearch + 1 : binarySearch;
        }
        return z10 ? Math.max(0, i4) : i4;
    }

    public static long h0(long j4) {
        if (j4 == com.google.android.exoplayer2.i.f23649b) {
            return System.currentTimeMillis();
        }
        return j4 + SystemClock.elapsedRealtime();
    }

    public static void h1(long[] jArr, long j4, long j10) {
        int i4 = 0;
        int i10 = (j10 > j4 ? 1 : (j10 == j4 ? 0 : -1));
        if (i10 >= 0 && j10 % j4 == 0) {
            long j11 = j10 / j4;
            while (i4 < jArr.length) {
                jArr[i4] = jArr[i4] / j11;
                i4++;
            }
        } else if (i10 < 0 && j4 % j10 == 0) {
            long j12 = j4 / j10;
            while (i4 < jArr.length) {
                jArr[i4] = jArr[i4] * j12;
                i4++;
            }
        } else {
            double d4 = j4 / j10;
            while (i4 < jArr.length) {
                jArr[i4] = (long) (jArr[i4] * d4);
                i4++;
            }
        }
    }

    public static int i(int[] iArr, int i4, boolean z9, boolean z10) {
        int i10;
        int binarySearch = Arrays.binarySearch(iArr, i4);
        if (binarySearch < 0) {
            i10 = -(binarySearch + 2);
        } else {
            do {
                binarySearch--;
                if (binarySearch < 0) {
                    break;
                }
            } while (iArr[binarySearch] == i4);
            i10 = z9 ? binarySearch + 1 : binarySearch;
        }
        return z10 ? Math.max(0, i10) : i10;
    }

    public static int i0(int i4) {
        if (i4 != 8) {
            if (i4 != 16) {
                if (i4 != 24) {
                    if (i4 != 32) {
                        return 0;
                    }
                    return com.google.android.exoplayer2.i.C;
                }
                return 536870912;
            }
            return 2;
        }
        return 3;
    }

    private static boolean i1(char c10) {
        return c10 == '\"' || c10 == '%' || c10 == '*' || c10 == '/' || c10 == ':' || c10 == '<' || c10 == '\\' || c10 == '|' || c10 == '>' || c10 == '?';
    }

    public static int j(long[] jArr, long j4, boolean z9, boolean z10) {
        int i4;
        int binarySearch = Arrays.binarySearch(jArr, j4);
        if (binarySearch < 0) {
            i4 = -(binarySearch + 2);
        } else {
            do {
                binarySearch--;
                if (binarySearch < 0) {
                    break;
                }
            } while (jArr[binarySearch] == j4);
            i4 = z9 ? binarySearch + 1 : binarySearch;
        }
        return z10 ? Math.max(0, i4) : i4;
    }

    public static Format j0(int i4, int i10, int i11) {
        return new Format.b().e0(a0.I).H(i10).f0(i11).Y(i4).E();
    }

    public static void j1(Throwable th) {
        k1(th);
    }

    @EnsuresNonNull({"#1"})
    public static <T> T k(@Nullable T t9) {
        return t9;
    }

    public static int k0(int i4, int i10) {
        if (i4 != 2) {
            if (i4 != 3) {
                if (i4 != 4) {
                    if (i4 != 268435456) {
                        if (i4 == 536870912) {
                            return i10 * 3;
                        }
                        if (i4 != 805306368) {
                            throw new IllegalArgumentException();
                        }
                    }
                }
                return i10 * 4;
            }
            return i10;
        }
        return i10 * 2;
    }

    private static <T extends Throwable> void k1(Throwable th) throws Throwable {
        throw th;
    }

    @EnsuresNonNull({"#1"})
    public static <T> T[] l(T[] tArr) {
        return tArr;
    }

    public static long l0(long j4, float f10) {
        return f10 == 1.0f ? j4 : Math.round(j4 / f10);
    }

    public static String[] l1(String str, String str2) {
        return str.split(str2, -1);
    }

    public static int m(int i4, int i10) {
        return ((i4 + i10) - 1) / i10;
    }

    public static int m0(int i4) {
        if (i4 != 13) {
            switch (i4) {
                case 2:
                    return 0;
                case 3:
                    return 8;
                case 4:
                    return 4;
                case 5:
                case 7:
                case 8:
                case 9:
                case 10:
                    return 5;
                case 6:
                    return 2;
                default:
                    return 3;
            }
        }
        return 1;
    }

    public static String[] m1(String str, String str2) {
        return str.split(str2, 2);
    }

    public static long n(long j4, long j10) {
        return ((j4 + j10) - 1) / j10;
    }

    public static String n0(StringBuilder sb, Formatter formatter, long j4) {
        if (j4 == com.google.android.exoplayer2.i.f23649b) {
            j4 = 0;
        }
        String str = j4 < 0 ? "-" : "";
        long abs = (Math.abs(j4) + 500) / 1000;
        long j10 = abs % 60;
        long j11 = (abs / 60) % 60;
        long j12 = abs / 3600;
        sb.setLength(0);
        return j12 > 0 ? formatter.format("%s%d:%02d:%02d", str, Long.valueOf(j12), Long.valueOf(j11), Long.valueOf(j10)).toString() : formatter.format("%s%02d:%02d", str, Long.valueOf(j11), Long.valueOf(j10)).toString();
    }

    public static String[] n1(@Nullable String str) {
        return TextUtils.isEmpty(str) ? new String[0] : l1(str.trim(), "(\\s*,\\s*)");
    }

    public static boolean o(com.google.android.exoplayer2.b1... b1VarArr) {
        if (f27743a < 24) {
            return true;
        }
        for (com.google.android.exoplayer2.b1 b1Var : b1VarArr) {
            b1.g gVar = b1Var.f21439b;
            if (gVar != null) {
                if (F0(gVar.f21502a)) {
                    return false;
                }
                for (int i4 = 0; i4 < b1Var.f21439b.f21508g.size(); i4++) {
                    if (F0(b1Var.f21439b.f21508g.get(i4).f21510a)) {
                        return false;
                    }
                }
                continue;
            }
        }
        return true;
    }

    public static String[] o0() {
        String[] p02 = p0();
        for (int i4 = 0; i4 < p02.length; i4++) {
            p02[i4] = Q0(p02[i4]);
        }
        return p02;
    }

    @Nullable
    public static ComponentName o1(Context context, Intent intent) {
        if (f27743a >= 26) {
            return context.startForegroundService(intent);
        }
        return context.startService(intent);
    }

    public static void p(@Nullable com.google.android.exoplayer2.upstream.m mVar) {
        if (mVar != null) {
            try {
                mVar.close();
            } catch (IOException unused) {
            }
        }
    }

    private static String[] p0() {
        Configuration configuration = Resources.getSystem().getConfiguration();
        return f27743a >= 24 ? q0(configuration) : new String[]{e0(configuration.locale)};
    }

    public static long p1(long j4, long j10, long j11) {
        long j12 = j4 - j10;
        return ((j4 ^ j12) & (j10 ^ j4)) < 0 ? j11 : j12;
    }

    public static void q(@Nullable Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException unused) {
            }
        }
    }

    @RequiresApi(24)
    private static String[] q0(Configuration configuration) {
        return l1(configuration.getLocales().toLanguageTags(), ",");
    }

    public static boolean q1(SQLiteDatabase sQLiteDatabase, String str) {
        return DatabaseUtils.queryNumEntries(sQLiteDatabase, "sqlite_master", "tbl_name = ?", new String[]{str}) > 0;
    }

    public static int r(long j4, long j10) {
        int i4 = (j4 > j10 ? 1 : (j4 == j10 ? 0 : -1));
        if (i4 < 0) {
            return -1;
        }
        return i4 == 0 ? 0 : 1;
    }

    @Nullable
    private static String r0(String str) {
        try {
            Class<?> cls = Class.forName("android.os.SystemProperties");
            return (String) cls.getMethod("get", String.class).invoke(cls, str);
        } catch (Exception e4) {
            String valueOf = String.valueOf(str);
            w.e(f27749g, valueOf.length() != 0 ? "Failed to read system property ".concat(valueOf) : new String("Failed to read system property "), e4);
            return null;
        }
    }

    public static byte[] r1(InputStream inputStream) throws IOException {
        byte[] bArr = new byte[4096];
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        while (true) {
            int read = inputStream.read(bArr);
            if (read != -1) {
                byteArrayOutputStream.write(bArr, 0, read);
            } else {
                return byteArrayOutputStream.toByteArray();
            }
        }
    }

    public static float s(float f10, float f11, float f12) {
        return Math.max(f11, Math.min(f10, f12));
    }

    public static String s0(int i4) {
        if (i4 != 0) {
            if (i4 != 1) {
                if (i4 != 2) {
                    if (i4 != 3) {
                        if (i4 != 5) {
                            if (i4 != 6) {
                                if (i4 != 7) {
                                    if (i4 >= 10000) {
                                        StringBuilder sb = new StringBuilder(20);
                                        sb.append("custom (");
                                        sb.append(i4);
                                        sb.append(")");
                                        return sb.toString();
                                    }
                                    return "?";
                                }
                                return "none";
                            }
                            return "camera motion";
                        }
                        return com.google.android.exoplayer2.text.ttml.d.f25744y;
                    }
                    return "text";
                }
                return "video";
            }
            return "audio";
        }
        return StatsConstant.BW_EST_STRATEGY_NORMAL;
    }

    public static String s1(byte[] bArr) {
        StringBuilder sb = new StringBuilder(bArr.length * 2);
        for (int i4 = 0; i4 < bArr.length; i4++) {
            sb.append(Character.forDigit((bArr[i4] >> 4) & 15, 16));
            sb.append(Character.forDigit(bArr[i4] & com.google.common.base.c.f32110q, 16));
        }
        return sb.toString();
    }

    public static int t(int i4, int i10, int i11) {
        return Math.max(i10, Math.min(i4, i11));
    }

    public static String t0(Context context, String str) {
        String str2;
        try {
            str2 = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName;
        } catch (PackageManager.NameNotFoundException unused) {
            str2 = "?";
        }
        String str3 = Build.VERSION.RELEASE;
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 38 + String.valueOf(str2).length() + String.valueOf(str3).length());
        sb.append(str);
        sb.append("/");
        sb.append(str2);
        sb.append(" (Linux;Android ");
        sb.append(str3);
        sb.append(") ");
        sb.append(com.google.android.exoplayer2.u0.f26069c);
        return sb.toString();
    }

    public static long t1(int i4, int i10) {
        return u1(i10) | (u1(i4) << 32);
    }

    public static long u(long j4, long j10, long j11) {
        return Math.max(j10, Math.min(j4, j11));
    }

    public static byte[] u0(String str) {
        return str.getBytes(com.google.common.base.e.f32190c);
    }

    public static long u1(int i4) {
        return i4 & 4294967295L;
    }

    public static boolean v(Object[] objArr, @Nullable Object obj) {
        for (Object obj2 : objArr) {
            if (c(obj2, obj)) {
                return true;
            }
        }
        return false;
    }

    public static byte[] v0(byte[] bArr) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(byteArrayOutputStream);
            gZIPOutputStream.write(bArr);
            gZIPOutputStream.close();
            return byteArrayOutputStream.toByteArray();
        } catch (IOException e4) {
            throw new AssertionError(e4);
        }
    }

    public static CharSequence v1(CharSequence charSequence, int i4) {
        return charSequence.length() <= i4 ? charSequence : charSequence.subSequence(0, i4);
    }

    public static int w(byte[] bArr, int i4, int i10, int i11) {
        while (i4 < i10) {
            i11 = f27759q[((i11 >>> 24) ^ (bArr[i4] & 255)) & 255] ^ (i11 << 8);
            i4++;
        }
        return i11;
    }

    public static int w0(Uri uri) {
        String scheme = uri.getScheme();
        if (scheme == null || !com.google.common.base.c.a("rtsp", scheme)) {
            String path = uri.getPath();
            if (path == null) {
                return 4;
            }
            return y0(path);
        }
        return 3;
    }

    @Nullable
    public static String w1(String str) {
        int length = str.length();
        int i4 = 0;
        int i10 = 0;
        for (int i11 = 0; i11 < length; i11++) {
            if (str.charAt(i11) == '%') {
                i10++;
            }
        }
        if (i10 == 0) {
            return str;
        }
        int i12 = length - (i10 * 2);
        StringBuilder sb = new StringBuilder(i12);
        Matcher matcher = f27752j.matcher(str);
        while (i10 > 0 && matcher.find()) {
            sb.append((CharSequence) str, i4, matcher.start());
            sb.append((char) Integer.parseInt((String) a.g(matcher.group(1)), 16));
            i4 = matcher.end();
            i10--;
        }
        if (i4 < length) {
            sb.append((CharSequence) str, i4, length);
        }
        if (sb.length() != i12) {
            return null;
        }
        return sb.toString();
    }

    public static int x(byte[] bArr, int i4, int i10, int i11) {
        while (i4 < i10) {
            i11 = f27760r[i11 ^ (bArr[i4] & 255)];
            i4++;
        }
        return i11;
    }

    public static int x0(Uri uri, @Nullable String str) {
        if (TextUtils.isEmpty(str)) {
            return w0(uri);
        }
        String valueOf = String.valueOf(str);
        return y0(valueOf.length() != 0 ? ".".concat(valueOf) : new String("."));
    }

    public static void x1(Parcel parcel, boolean z9) {
        parcel.writeInt(z9 ? 1 : 0);
    }

    public static Handler y(Looper looper, @Nullable Handler.Callback callback) {
        return new Handler(looper, callback);
    }

    public static int y0(String str) {
        String g4 = com.google.common.base.c.g(str);
        if (g4.endsWith(".mpd")) {
            return 0;
        }
        if (g4.endsWith(".m3u8")) {
            return 2;
        }
        Matcher matcher = f27753k.matcher(g4);
        if (matcher.matches()) {
            String group = matcher.group(2);
            if (group != null) {
                if (group.contains(f27755m)) {
                    return 0;
                }
                return group.contains(f27754l) ? 2 : 1;
            }
            return 1;
        }
        return 4;
    }

    public static Handler z() {
        return A(null);
    }

    public static int z0(Uri uri, @Nullable String str) {
        if (str == null) {
            return w0(uri);
        }
        char c10 = 65535;
        switch (str.hashCode()) {
            case -979127466:
                if (str.equals(a0.f27452k0)) {
                    c10 = 0;
                    break;
                }
                break;
            case -156749520:
                if (str.equals(a0.f27454l0)) {
                    c10 = 1;
                    break;
                }
                break;
            case 64194685:
                if (str.equals(a0.f27450j0)) {
                    c10 = 2;
                    break;
                }
                break;
            case 1154777587:
                if (str.equals(a0.E0)) {
                    c10 = 3;
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
                return 2;
            case 1:
                return 1;
            case 2:
                return 0;
            case 3:
                return 3;
            default:
                return 4;
        }
    }
}
