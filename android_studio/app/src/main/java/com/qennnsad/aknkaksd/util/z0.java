package com.qennnsad.aknkaksd.util;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.VectorDrawable;
import android.media.ThumbnailUtils;
import android.util.Base64;
import android.util.LruCache;
import android.util.Range;
import android.widget.ImageView;
import androidx.annotation.DrawableRes;
import androidx.core.content.ContextCompat;
import com.didi.live.spring.R;

/* compiled from: PicUtil.java */
/* loaded from: classes3.dex */
public class z0 {

    /* renamed from: b  reason: collision with root package name */
    private static final String f55132b = "PicUtil";

    /* renamed from: a  reason: collision with root package name */
    public static Range<Integer> f55131a = new Range<>(1, 6);

    /* renamed from: c  reason: collision with root package name */
    private static int f55133c = 0;

    /* renamed from: d  reason: collision with root package name */
    private static int f55134d = 0;

    /* renamed from: e  reason: collision with root package name */
    private static final LruCache<Integer, Bitmap> f55135e = new a(150);

    /* compiled from: PicUtil.java */
    /* loaded from: classes3.dex */
    class a extends LruCache<Integer, Bitmap> {
        a(int i4) {
            super(i4);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.util.LruCache
        /* renamed from: a */
        public void entryRemoved(boolean z9, Integer num, Bitmap bitmap, Bitmap bitmap2) {
            super.entryRemoved(z9, num, bitmap, bitmap2);
            if (z9) {
                z0.a();
            }
            bitmap.recycle();
        }
    }

    static /* synthetic */ int a() {
        int i4 = f55134d;
        f55134d = i4 + 1;
        return i4;
    }

    public static Bitmap b(Bitmap bitmap) {
        int min = Math.min(bitmap.getWidth(), bitmap.getHeight());
        return ThumbnailUtils.extractThumbnail(bitmap, min, min);
    }

    private static Bitmap c(Context context, int i4, String str) {
        try {
            Resources resources = context.getResources();
            float f10 = resources.getDisplayMetrics().density;
            Bitmap decodeResource = BitmapFactory.decodeResource(resources, i4);
            Bitmap.Config config = decodeResource.getConfig();
            if (config == null) {
                config = Bitmap.Config.ARGB_8888;
            }
            Bitmap copy = decodeResource.copy(config, true);
            Canvas canvas = new Canvas(copy);
            Paint paint = new Paint(1);
            paint.setColor(-1);
            paint.setTextSize((int) (f10 * 9.0f));
            paint.setTypeface(Typeface.create(Typeface.DEFAULT_BOLD, 2));
            Rect rect = new Rect();
            paint.getTextBounds(str, 0, str.length(), rect);
            int width = canvas.getWidth() / 3;
            canvas.drawText(str, width + (((canvas.getWidth() - width) - rect.width()) / 2), (int) ((canvas.getHeight() / 2) - ((paint.descent() + paint.ascent()) / 2.0f)), paint);
            return copy;
        } catch (Exception unused) {
            return null;
        }
    }

    @DrawableRes
    public static int d(int i4) {
        if (i4 == 1) {
            return R.drawable.admin_room;
        }
        if (i4 == 2) {
            return R.drawable.admin_show;
        }
        if (i4 == 3) {
            return R.drawable.admin_super;
        }
        return 0;
    }

    public static Bitmap e(Context context, int i4) {
        LruCache<Integer, Bitmap> lruCache = f55135e;
        Bitmap bitmap = lruCache.get(Integer.valueOf(i4));
        if (bitmap != null) {
            f55133c++;
            return bitmap;
        }
        Bitmap c10 = c(context, i4 <= 30 ? R.drawable.rank_1_30 : i4 <= 60 ? R.drawable.rank_31_60 : i4 <= 90 ? R.drawable.rank_61_90 : R.drawable.rank_91_120, String.valueOf(i4));
        lruCache.put(Integer.valueOf(i4), c10);
        return c10;
    }

    @DrawableRes
    @Deprecated
    public static int f(Context context, int i4) {
        Resources resources = context.getResources();
        return resources.getIdentifier("rank_" + i4, "drawable", context.getPackageName());
    }

    @DrawableRes
    public static int g(int i4) {
        if (f55131a.contains((Range<Integer>) Integer.valueOf(i4))) {
            if (i4 == 6) {
                return R.drawable.card_swordsman;
            }
            if (i4 == 5) {
                return R.drawable.card_knight;
            }
            if (i4 == 4) {
                return R.drawable.card_lord;
            }
            if (i4 == 3) {
                return R.drawable.card_duke;
            }
            if (i4 == 2) {
                return R.drawable.card_king;
            }
            if (i4 == 1) {
                return R.drawable.card_emperor;
            }
            return 0;
        }
        return 0;
    }

    @DrawableRes
    public static int h(int i4) {
        if (f55131a.contains((Range<Integer>) Integer.valueOf(i4))) {
            if (i4 == 1) {
                return R.drawable.peerage6;
            }
            if (i4 == 2) {
                return R.drawable.peerage5;
            }
            if (i4 == 3) {
                return R.drawable.peerage4;
            }
            if (i4 == 4) {
                return R.drawable.peerage3;
            }
            if (i4 == 5) {
                return R.drawable.peerage2;
            }
            if (i4 == 6) {
                return R.drawable.peerage1;
            }
            return 0;
        }
        return 0;
    }

    public static Bitmap i(Context context, int i4) {
        if (i4 == 0) {
            return null;
        }
        Drawable drawable = ContextCompat.getDrawable(context, i4);
        VectorDrawable vectorDrawable = drawable instanceof VectorDrawable ? (VectorDrawable) drawable : null;
        if (vectorDrawable == null) {
            return null;
        }
        Bitmap createBitmap = Bitmap.createBitmap(vectorDrawable.getIntrinsicWidth(), vectorDrawable.getIntrinsicHeight(), Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(createBitmap);
        vectorDrawable.setBounds(0, 0, canvas.getWidth(), canvas.getHeight());
        vectorDrawable.draw(canvas);
        return createBitmap;
    }

    public static void j() {
        o0.g(f55132b, "LRU Survived: " + f55133c);
        o0.g(f55132b, "LRU Evicted: " + f55134d);
        int i4 = f55133c;
        float f10 = ((float) i4) / ((float) (i4 + f55134d));
        o0.g(f55132b, "LRU Ratio: " + f10);
    }

    public static void k(ImageView imageView, String str, int i4, int i10) {
        com.bumptech.glide.c.F(imageView).b(str).a(com.bumptech.glide.request.h.S0(new jp.wasabeef.glide.transformations.b(i10, i4))).x(R.drawable.bg_room_blurred).w0(R.drawable.bg_room_blurred).k1(imageView);
    }

    public static Bitmap l(String str) {
        try {
            byte[] decode = Base64.decode(str, 0);
            return BitmapFactory.decodeByteArray(decode, 0, decode.length);
        } catch (Exception e4) {
            e4.printStackTrace();
            return null;
        }
    }
}
