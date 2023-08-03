package com.tangxiaolv.telegramgallery.Utils;

import android.annotation.SuppressLint;
import android.content.Intent;
import android.content.res.Configuration;
import android.graphics.Color;
import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Environment;
import android.text.SpannableStringBuilder;
import android.text.style.ForegroundColorSpan;
import android.util.DisplayMetrics;
import android.util.Log;
import android.util.StateSet;
import android.view.Display;
import android.view.View;
import android.view.WindowManager;
import android.view.inputmethod.InputMethodManager;
import android.widget.AbsListView;
import android.widget.EdgeEffect;
import android.widget.ListView;
import android.widget.Toast;
import androidx.core.internal.view.SupportMenu;
import com.ksyun.media.player.KSYMediaMeta;
import com.tangxiaolv.telegramgallery.q;
import io.sentry.protocol.y;
import java.io.File;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Hashtable;
import java.util.Locale;
import java.util.regex.Pattern;

/* compiled from: AndroidUtilities.java */
/* loaded from: classes3.dex */
public class a {

    /* renamed from: b  reason: collision with root package name */
    public static int f56373b = 0;

    /* renamed from: c  reason: collision with root package name */
    public static float f56374c = 0.0f;

    /* renamed from: g  reason: collision with root package name */
    public static int f56378g = 0;

    /* renamed from: h  reason: collision with root package name */
    public static boolean f56379h = false;

    /* renamed from: j  reason: collision with root package name */
    private static Toast f56381j = null;

    /* renamed from: k  reason: collision with root package name */
    public static Pattern f56382k = null;

    /* renamed from: l  reason: collision with root package name */
    public static final int f56383l = 1;

    /* renamed from: m  reason: collision with root package name */
    public static final int f56384m = 2;

    /* renamed from: n  reason: collision with root package name */
    public static final int f56385n = 4;

    /* renamed from: o  reason: collision with root package name */
    public static final int f56386o = 7;

    /* renamed from: a  reason: collision with root package name */
    private static final Hashtable<String, Typeface> f56372a = new Hashtable<>();

    /* renamed from: d  reason: collision with root package name */
    public static Point f56375d = new Point();

    /* renamed from: e  reason: collision with root package name */
    public static Integer f56376e = null;

    /* renamed from: f  reason: collision with root package name */
    public static DisplayMetrics f56377f = new DisplayMetrics();

    /* renamed from: i  reason: collision with root package name */
    private static Boolean f56380i = null;

    static {
        f56373b = 0;
        f56374c = 1.0f;
        f56382k = null;
        try {
            f56382k = Pattern.compile("((?:(http|https|Http|Https):\\/\\/(?:(?:[a-zA-Z0-9\\$\\-\\_\\.\\+\\!\\*\\'\\(\\)\\,\\;\\?\\&\\=]|(?:\\%[a-fA-F0-9]{2})){1,64}(?:\\:(?:[a-zA-Z0-9\\$\\-\\_\\.\\+\\!\\*\\'\\(\\)\\,\\;\\?\\&\\=]|(?:\\%[a-fA-F0-9]{2})){1,25})?\\@)?)?(?:" + Pattern.compile("(([a-zA-Z0-9 -\ud7ff豈-\ufdcfﷰ-\uffef]([a-zA-Z0-9 -\ud7ff豈-\ufdcfﷰ-\uffef\\-]{0,61}[a-zA-Z0-9 -\ud7ff豈-\ufdcfﷰ-\uffef]){0,1}\\.)+[a-zA-Z -\ud7ff豈-\ufdcfﷰ-\uffef]{2,63}|" + Pattern.compile("((25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[1-9])\\.(25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[1-9]|0)\\.(25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[1-9]|0)\\.(25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[0-9]))") + ")") + ")(?:\\:\\d{1,5})?)(\\/(?:(?:[a-zA-Z0-9 -\ud7ff豈-\ufdcfﷰ-\uffef\\;\\/\\?\\:\\@\\&\\=\\#\\~\\-\\.\\+\\!\\*\\'\\(\\)\\,\\_])|(?:\\%[a-fA-F0-9]{2}))*)?(?:\\b|$)");
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        f56374c = com.tangxiaolv.telegramgallery.e.f56717a.getResources().getDisplayMetrics().density;
        f56378g = z() ? 80 : 72;
        d();
        int identifier = com.tangxiaolv.telegramgallery.e.f56717a.getResources().getIdentifier("status_bar_height", "dimen", "android");
        if (identifier > 0) {
            f56373b = com.tangxiaolv.telegramgallery.e.f56717a.getResources().getDimensionPixelSize(identifier);
        }
    }

    public static long A(int i4) {
        return (i4 & 4294967295L) | KSYMediaMeta.AV_CH_WIDE_RIGHT;
    }

    public static SpannableStringBuilder B(String str) {
        return C(str, 7);
    }

    public static SpannableStringBuilder C(String str, int i4) {
        try {
            StringBuilder sb = new StringBuilder(str);
            if ((i4 & 1) != 0) {
                while (true) {
                    int indexOf = sb.indexOf("<br>");
                    if (indexOf == -1) {
                        break;
                    }
                    sb.replace(indexOf, indexOf + 4, "\n");
                }
                while (true) {
                    int indexOf2 = sb.indexOf("<br/>");
                    if (indexOf2 == -1) {
                        break;
                    }
                    sb.replace(indexOf2, indexOf2 + 5, "\n");
                }
            }
            ArrayList arrayList = new ArrayList();
            if ((i4 & 2) != 0) {
                while (true) {
                    int indexOf3 = sb.indexOf("<b>");
                    if (indexOf3 == -1) {
                        break;
                    }
                    sb.replace(indexOf3, indexOf3 + 3, "");
                    int indexOf4 = sb.indexOf("</b>");
                    if (indexOf4 == -1) {
                        indexOf4 = sb.indexOf("<b>");
                    }
                    sb.replace(indexOf4, indexOf4 + 4, "");
                    arrayList.add(Integer.valueOf(indexOf3));
                    arrayList.add(Integer.valueOf(indexOf4));
                }
            }
            ArrayList arrayList2 = new ArrayList();
            if ((i4 & 4) != 0) {
                while (true) {
                    int indexOf5 = sb.indexOf("<c#");
                    if (indexOf5 == -1) {
                        break;
                    }
                    sb.replace(indexOf5, indexOf5 + 2, "");
                    int indexOf6 = sb.indexOf(">", indexOf5);
                    int parseColor = Color.parseColor(sb.substring(indexOf5, indexOf6));
                    sb.replace(indexOf5, indexOf6 + 1, "");
                    int indexOf7 = sb.indexOf("</c>");
                    sb.replace(indexOf7, indexOf7 + 4, "");
                    arrayList2.add(Integer.valueOf(indexOf5));
                    arrayList2.add(Integer.valueOf(indexOf7));
                    arrayList2.add(Integer.valueOf(parseColor));
                }
            }
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(sb);
            for (int i10 = 0; i10 < arrayList2.size() / 3; i10++) {
                int i11 = i10 * 3;
                spannableStringBuilder.setSpan(new ForegroundColorSpan(((Integer) arrayList2.get(i11 + 2)).intValue()), ((Integer) arrayList2.get(i11)).intValue(), ((Integer) arrayList2.get(i11 + 1)).intValue(), 33);
            }
            return spannableStringBuilder;
        } catch (Exception e4) {
            e4.printStackTrace();
            return new SpannableStringBuilder(str);
        }
    }

    public static void D(Runnable runnable) {
        E(runnable, 0L);
    }

    public static void E(Runnable runnable, long j4) {
        if (j4 == 0) {
            com.tangxiaolv.telegramgallery.e.f56718b.post(runnable);
        } else {
            com.tangxiaolv.telegramgallery.e.f56718b.postDelayed(runnable, j4);
        }
    }

    public static void F(AbsListView absListView, int i4) {
        try {
            Field declaredField = AbsListView.class.getDeclaredField("mEdgeGlowTop");
            declaredField.setAccessible(true);
            EdgeEffect edgeEffect = (EdgeEffect) declaredField.get(absListView);
            if (edgeEffect != null) {
                edgeEffect.setColor(i4);
            }
            Field declaredField2 = AbsListView.class.getDeclaredField("mEdgeGlowBottom");
            declaredField2.setAccessible(true);
            EdgeEffect edgeEffect2 = (EdgeEffect) declaredField2.get(absListView);
            if (edgeEffect2 != null) {
                edgeEffect2.setColor(i4);
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    public static int G(int i4, int i10) {
        return (i4 & SupportMenu.CATEGORY_MASK) | i10;
    }

    public static int H(int i4, int i10) {
        return (i4 & 65535) | (i10 << 16);
    }

    public static void I(View view) {
        if (view == null) {
            return;
        }
        try {
            ((InputMethodManager) view.getContext().getSystemService("input_method")).showSoftInput(view, 1);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    public static void J(String str) {
        Toast toast = f56381j;
        if (toast == null) {
            f56381j = Toast.makeText(com.tangxiaolv.telegramgallery.e.f56717a, str, 0);
        } else {
            toast.setText(str);
        }
        f56381j.show();
    }

    public static void a(Uri uri) {
        if (uri == null) {
            return;
        }
        try {
            Intent intent = new Intent("android.intent.action.MEDIA_SCANNER_SCAN_FILE");
            intent.setData(uri);
            com.tangxiaolv.telegramgallery.e.f56717a.sendBroadcast(intent);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    public static void b(String str) {
        if (str == null) {
            return;
        }
        a(Uri.fromFile(new File(str)));
    }

    public static void c(Runnable runnable) {
        com.tangxiaolv.telegramgallery.e.f56718b.removeCallbacks(runnable);
    }

    public static void d() {
        Display defaultDisplay;
        try {
            Configuration configuration = com.tangxiaolv.telegramgallery.e.f56717a.getResources().getConfiguration();
            boolean z9 = true;
            if (configuration.keyboard == 1 || configuration.hardKeyboardHidden != 1) {
                z9 = false;
            }
            f56379h = z9;
            WindowManager windowManager = (WindowManager) com.tangxiaolv.telegramgallery.e.f56717a.getSystemService("window");
            if (windowManager == null || (defaultDisplay = windowManager.getDefaultDisplay()) == null) {
                return;
            }
            defaultDisplay.getMetrics(f56377f);
            defaultDisplay.getSize(f56375d);
            Log.d("tmessages", "display size = " + f56375d.x + " " + f56375d.y + " " + f56377f.xdpi + y.b.f83919g + f56377f.ydpi);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    @SuppressLint({"NewApi"})
    public static void e(View view) {
        if (view == null) {
            return;
        }
        if (view instanceof ListView) {
            Drawable selector = ((ListView) view).getSelector();
            if (selector != null) {
                selector.setState(StateSet.NOTHING);
                return;
            }
            return;
        }
        Drawable background = view.getBackground();
        if (background != null) {
            background.setState(StateSet.NOTHING);
            background.jumpToCurrentState();
        }
    }

    public static int f(int i4, int i10) {
        if (i4 == i10) {
            return 0;
        }
        return i4 > i10 ? 1 : -1;
    }

    public static int g(float f10) {
        if (f10 == 0.0f) {
            return 0;
        }
        return (int) Math.ceil(f56374c * f10);
    }

    public static float h(float f10) {
        if (f10 == 0.0f) {
            return 0.0f;
        }
        return f56374c * f10;
    }

    public static File i() {
        String str;
        try {
            str = Environment.getExternalStorageState();
        } catch (Exception e4) {
            e4.printStackTrace();
            str = null;
        }
        if (str == null || str.startsWith("mounted")) {
            try {
                File externalCacheDir = com.tangxiaolv.telegramgallery.e.f56717a.getExternalCacheDir();
                if (externalCacheDir != null) {
                    return externalCacheDir;
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
        try {
            File cacheDir = com.tangxiaolv.telegramgallery.e.f56717a.getCacheDir();
            if (cacheDir != null) {
                return cacheDir;
            }
        } catch (Exception e11) {
            e11.printStackTrace();
        }
        return new File("");
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0039, code lost:
        if (r9.startsWith("file://") == false) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0046, code lost:
        if (r8 != null) goto L8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0050, code lost:
        if (r8 == null) goto L6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0052, code lost:
        r8.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0055, code lost:
        return null;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:33:0x005a  */
    /* JADX WARN: Type inference failed for: r7v0 */
    /* JADX WARN: Type inference failed for: r7v1, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r7v2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.lang.String j(android.content.Context r8, android.net.Uri r9, java.lang.String r10, java.lang.String[] r11) {
        /*
            java.lang.String r0 = "_data"
            java.lang.String[] r3 = new java.lang.String[]{r0}
            r7 = 0
            android.content.ContentResolver r1 = r8.getContentResolver()     // Catch: java.lang.Throwable -> L49 java.lang.Exception -> L4b
            r6 = 0
            r2 = r9
            r4 = r10
            r5 = r11
            android.database.Cursor r8 = r1.query(r2, r3, r4, r5, r6)     // Catch: java.lang.Throwable -> L49 java.lang.Exception -> L4b
            if (r8 == 0) goto L46
            boolean r9 = r8.moveToFirst()     // Catch: java.lang.Exception -> L44 java.lang.Throwable -> L56
            if (r9 == 0) goto L46
            int r9 = r8.getColumnIndexOrThrow(r0)     // Catch: java.lang.Exception -> L44 java.lang.Throwable -> L56
            java.lang.String r9 = r8.getString(r9)     // Catch: java.lang.Exception -> L44 java.lang.Throwable -> L56
            java.lang.String r10 = "content://"
            boolean r10 = r9.startsWith(r10)     // Catch: java.lang.Exception -> L44 java.lang.Throwable -> L56
            if (r10 != 0) goto L40
            java.lang.String r10 = "/"
            boolean r10 = r9.startsWith(r10)     // Catch: java.lang.Exception -> L44 java.lang.Throwable -> L56
            if (r10 != 0) goto L3c
            java.lang.String r10 = "file://"
            boolean r10 = r9.startsWith(r10)     // Catch: java.lang.Exception -> L44 java.lang.Throwable -> L56
            if (r10 != 0) goto L3c
            goto L40
        L3c:
            r8.close()
            return r9
        L40:
            r8.close()
            return r7
        L44:
            r9 = move-exception
            goto L4d
        L46:
            if (r8 == 0) goto L55
            goto L52
        L49:
            r9 = move-exception
            goto L58
        L4b:
            r9 = move-exception
            r8 = r7
        L4d:
            r9.printStackTrace()     // Catch: java.lang.Throwable -> L56
            if (r8 == 0) goto L55
        L52:
            r8.close()
        L55:
            return r7
        L56:
            r9 = move-exception
            r7 = r8
        L58:
            if (r7 == 0) goto L5d
            r7.close()
        L5d:
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tangxiaolv.telegramgallery.Utils.a.j(android.content.Context, android.net.Uri, java.lang.String, java.lang.String[]):java.lang.String");
    }

    public static int k() {
        if (!y()) {
            Point point = f56375d;
            int min = Math.min(point.x, point.y);
            int i4 = (min * 35) / 100;
            if (i4 < g(320.0f)) {
                i4 = g(320.0f);
            }
            return min - i4;
        }
        Point point2 = f56375d;
        int min2 = Math.min(point2.x, point2.y);
        Point point3 = f56375d;
        int max = Math.max(point3.x, point3.y);
        int i10 = (max * 35) / 100;
        if (i10 < g(320.0f)) {
            i10 = g(320.0f);
        }
        return Math.min(min2, max - i10);
    }

    public static int l(int i4) {
        return i4 & 65535;
    }

    /* JADX WARN: Code restructure failed: missing block: B:35:0x00a8, code lost:
        if (r2 == 1) goto L34;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x00aa, code lost:
        if (r2 == 2) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x00ac, code lost:
        r1 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x00ae, code lost:
        r1 = android.provider.MediaStore.Audio.Media.EXTERNAL_CONTENT_URI;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x00b1, code lost:
        r1 = android.provider.MediaStore.Video.Media.EXTERNAL_CONTENT_URI;
     */
    @android.annotation.SuppressLint({"NewApi"})
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.lang.String m(android.net.Uri r8) {
        /*
            r0 = 0
            android.app.Application r1 = com.tangxiaolv.telegramgallery.e.f56717a     // Catch: java.lang.Exception -> Le9
            boolean r1 = android.provider.DocumentsContract.isDocumentUri(r1, r8)     // Catch: java.lang.Exception -> Le9
            if (r1 == 0) goto Lc5
            boolean r1 = v(r8)     // Catch: java.lang.Exception -> Le9
            java.lang.String r2 = ":"
            r3 = 0
            r4 = 1
            if (r1 == 0) goto L40
            java.lang.String r8 = android.provider.DocumentsContract.getDocumentId(r8)     // Catch: java.lang.Exception -> Le9
            java.lang.String[] r8 = r8.split(r2)     // Catch: java.lang.Exception -> Le9
            r1 = r8[r3]     // Catch: java.lang.Exception -> Le9
            java.lang.String r2 = "primary"
            boolean r1 = r2.equalsIgnoreCase(r1)     // Catch: java.lang.Exception -> Le9
            if (r1 == 0) goto Led
            java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> Le9
            r1.<init>()     // Catch: java.lang.Exception -> Le9
            java.io.File r2 = android.os.Environment.getExternalStorageDirectory()     // Catch: java.lang.Exception -> Le9
            r1.append(r2)     // Catch: java.lang.Exception -> Le9
            java.lang.String r2 = "/"
            r1.append(r2)     // Catch: java.lang.Exception -> Le9
            r8 = r8[r4]     // Catch: java.lang.Exception -> Le9
            r1.append(r8)     // Catch: java.lang.Exception -> Le9
            java.lang.String r8 = r1.toString()     // Catch: java.lang.Exception -> Le9
            return r8
        L40:
            boolean r1 = u(r8)     // Catch: java.lang.Exception -> Le9
            if (r1 == 0) goto L63
            java.lang.String r8 = android.provider.DocumentsContract.getDocumentId(r8)     // Catch: java.lang.Exception -> Le9
            java.lang.String r1 = "content://downloads/public_downloads"
            android.net.Uri r1 = android.net.Uri.parse(r1)     // Catch: java.lang.Exception -> Le9
            java.lang.Long r8 = java.lang.Long.valueOf(r8)     // Catch: java.lang.Exception -> Le9
            long r2 = r8.longValue()     // Catch: java.lang.Exception -> Le9
            android.net.Uri r8 = android.content.ContentUris.withAppendedId(r1, r2)     // Catch: java.lang.Exception -> Le9
            android.app.Application r1 = com.tangxiaolv.telegramgallery.e.f56717a     // Catch: java.lang.Exception -> Le9
            java.lang.String r8 = j(r1, r8, r0, r0)     // Catch: java.lang.Exception -> Le9
            return r8
        L63:
            boolean r1 = w(r8)     // Catch: java.lang.Exception -> Le9
            if (r1 == 0) goto Led
            java.lang.String r8 = android.provider.DocumentsContract.getDocumentId(r8)     // Catch: java.lang.Exception -> Le9
            java.lang.String[] r8 = r8.split(r2)     // Catch: java.lang.Exception -> Le9
            r1 = r8[r3]     // Catch: java.lang.Exception -> Le9
            r2 = -1
            int r5 = r1.hashCode()     // Catch: java.lang.Exception -> Le9
            r6 = 93166550(0x58d9bd6, float:1.3316821E-35)
            r7 = 2
            if (r5 == r6) goto L9d
            r6 = 100313435(0x5faa95b, float:2.3572098E-35)
            if (r5 == r6) goto L93
            r6 = 112202875(0x6b0147b, float:6.6233935E-35)
            if (r5 == r6) goto L89
            goto La6
        L89:
            java.lang.String r5 = "video"
            boolean r1 = r1.equals(r5)     // Catch: java.lang.Exception -> Le9
            if (r1 == 0) goto La6
            r2 = 1
            goto La6
        L93:
            java.lang.String r5 = "image"
            boolean r1 = r1.equals(r5)     // Catch: java.lang.Exception -> Le9
            if (r1 == 0) goto La6
            r2 = 0
            goto La6
        L9d:
            java.lang.String r5 = "audio"
            boolean r1 = r1.equals(r5)     // Catch: java.lang.Exception -> Le9
            if (r1 == 0) goto La6
            r2 = 2
        La6:
            if (r2 == 0) goto Lb4
            if (r2 == r4) goto Lb1
            if (r2 == r7) goto Lae
            r1 = r0
            goto Lb6
        Lae:
            android.net.Uri r1 = android.provider.MediaStore.Audio.Media.EXTERNAL_CONTENT_URI     // Catch: java.lang.Exception -> Le9
            goto Lb6
        Lb1:
            android.net.Uri r1 = android.provider.MediaStore.Video.Media.EXTERNAL_CONTENT_URI     // Catch: java.lang.Exception -> Le9
            goto Lb6
        Lb4:
            android.net.Uri r1 = android.provider.MediaStore.Images.Media.EXTERNAL_CONTENT_URI     // Catch: java.lang.Exception -> Le9
        Lb6:
            java.lang.String[] r2 = new java.lang.String[r4]     // Catch: java.lang.Exception -> Le9
            r8 = r8[r4]     // Catch: java.lang.Exception -> Le9
            r2[r3] = r8     // Catch: java.lang.Exception -> Le9
            android.app.Application r8 = com.tangxiaolv.telegramgallery.e.f56717a     // Catch: java.lang.Exception -> Le9
            java.lang.String r3 = "_id=?"
            java.lang.String r8 = j(r8, r1, r3, r2)     // Catch: java.lang.Exception -> Le9
            return r8
        Lc5:
            java.lang.String r1 = "content"
            java.lang.String r2 = r8.getScheme()     // Catch: java.lang.Exception -> Le9
            boolean r1 = r1.equalsIgnoreCase(r2)     // Catch: java.lang.Exception -> Le9
            if (r1 == 0) goto Ld8
            android.app.Application r1 = com.tangxiaolv.telegramgallery.e.f56717a     // Catch: java.lang.Exception -> Le9
            java.lang.String r8 = j(r1, r8, r0, r0)     // Catch: java.lang.Exception -> Le9
            return r8
        Ld8:
            java.lang.String r1 = "file"
            java.lang.String r2 = r8.getScheme()     // Catch: java.lang.Exception -> Le9
            boolean r1 = r1.equalsIgnoreCase(r2)     // Catch: java.lang.Exception -> Le9
            if (r1 == 0) goto Led
            java.lang.String r8 = r8.getPath()     // Catch: java.lang.Exception -> Le9
            return r8
        Le9:
            r8 = move-exception
            r8.printStackTrace()
        Led:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tangxiaolv.telegramgallery.Utils.a.m(android.net.Uri):java.lang.String");
    }

    public static int n(int i4) {
        return (i4 >> 16) & 65535;
    }

    public static int o() {
        if (f56376e == null) {
            f56376e = Integer.valueOf((int) com.im.freechat.utils.h.f43782b);
        }
        return f56376e.intValue();
    }

    public static float p(float f10, boolean z9) {
        return (f10 / 2.54f) * (z9 ? f56377f.xdpi : f56377f.ydpi);
    }

    public static Point q() {
        Point point = new Point();
        try {
            ((WindowManager) com.tangxiaolv.telegramgallery.e.f56717a.getSystemService("window")).getDefaultDisplay().getRealSize(point);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        return point;
    }

    public static CharSequence r(CharSequence charSequence) {
        if (charSequence != null && charSequence.length() != 0) {
            while (charSequence.length() > 0 && (charSequence.charAt(0) == '\n' || charSequence.charAt(0) == ' ')) {
                charSequence = charSequence.subSequence(1, charSequence.length());
            }
            while (charSequence.length() > 0 && (charSequence.charAt(charSequence.length() - 1) == '\n' || charSequence.charAt(charSequence.length() - 1) == ' ')) {
                charSequence = charSequence.subSequence(0, charSequence.length() - 1);
            }
        }
        return charSequence;
    }

    public static int s(View view) {
        if (view != null && view.getHeight() != f56375d.y && view.getHeight() != f56375d.y - f56373b) {
            try {
                Field declaredField = View.class.getDeclaredField("mAttachInfo");
                declaredField.setAccessible(true);
                Object obj = declaredField.get(view);
                if (obj != null) {
                    Field declaredField2 = obj.getClass().getDeclaredField("mStableInsets");
                    declaredField2.setAccessible(true);
                    return ((Rect) declaredField2.get(obj)).bottom;
                }
            } catch (Exception unused) {
            }
        }
        return 0;
    }

    public static void t(View view) {
        if (view == null) {
            return;
        }
        try {
            InputMethodManager inputMethodManager = (InputMethodManager) view.getContext().getSystemService("input_method");
            if (inputMethodManager.isActive()) {
                inputMethodManager.hideSoftInputFromWindow(view.getWindowToken(), 0);
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    public static boolean u(Uri uri) {
        return "com.android.providers.downloads.documents".equals(uri.getAuthority());
    }

    public static boolean v(Uri uri) {
        return "com.android.externalstorage.documents".equals(uri.getAuthority());
    }

    public static boolean w(Uri uri) {
        return "com.android.providers.media.documents".equals(uri.getAuthority());
    }

    public static boolean x() {
        byte directionality = Character.getDirectionality(Locale.getDefault().getDisplayName().charAt(0));
        return directionality == 1 || directionality == 2;
    }

    public static boolean y() {
        Point point = f56375d;
        return ((float) Math.min(point.x, point.y)) / f56374c <= 700.0f;
    }

    public static boolean z() {
        if (f56380i == null) {
            f56380i = Boolean.valueOf(com.tangxiaolv.telegramgallery.e.f56717a.getResources().getBoolean(q.e.f57283c));
        }
        return f56380i.booleanValue();
    }
}
