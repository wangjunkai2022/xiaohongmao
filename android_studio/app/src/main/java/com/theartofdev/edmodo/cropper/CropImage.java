package com.theartofdev.edmodo.cropper;

import android.app.Activity;
import android.app.Fragment;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.provider.MediaStore;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.theartofdev.edmodo.cropper.CropImageView;
import com.theartofdev.edmodo.cropper.g;
import java.io.File;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes3.dex */
public final class CropImage {

    /* renamed from: a  reason: collision with root package name */
    public static final String f58819a = "CROP_IMAGE_EXTRA_SOURCE";

    /* renamed from: b  reason: collision with root package name */
    public static final String f58820b = "CROP_IMAGE_EXTRA_OPTIONS";

    /* renamed from: c  reason: collision with root package name */
    public static final String f58821c = "CROP_IMAGE_EXTRA_BUNDLE";

    /* renamed from: d  reason: collision with root package name */
    public static final String f58822d = "CROP_IMAGE_EXTRA_RESULT";

    /* renamed from: e  reason: collision with root package name */
    public static final int f58823e = 200;

    /* renamed from: f  reason: collision with root package name */
    public static final int f58824f = 201;

    /* renamed from: g  reason: collision with root package name */
    public static final int f58825g = 2011;

    /* renamed from: h  reason: collision with root package name */
    public static final int f58826h = 203;

    /* renamed from: i  reason: collision with root package name */
    public static final int f58827i = 204;

    /* loaded from: classes3.dex */
    public static final class ActivityResult extends CropImageView.b implements Parcelable {
        public static final Parcelable.Creator<ActivityResult> CREATOR = new a();

        /* loaded from: classes3.dex */
        static class a implements Parcelable.Creator<ActivityResult> {
            a() {
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: a */
            public ActivityResult createFromParcel(Parcel parcel) {
                return new ActivityResult(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: b */
            public ActivityResult[] newArray(int i4) {
                return new ActivityResult[i4];
            }
        }

        public ActivityResult(Uri uri, Uri uri2, Exception exc, float[] fArr, Rect rect, int i4, Rect rect2, int i10) {
            super(null, uri, null, uri2, exc, fArr, rect, rect2, i4, i10);
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i4) {
            parcel.writeParcelable(getOriginalUri(), i4);
            parcel.writeParcelable(getUri(), i4);
            parcel.writeSerializable(getError());
            parcel.writeFloatArray(getCropPoints());
            parcel.writeParcelable(getCropRect(), i4);
            parcel.writeParcelable(getWholeImageRect(), i4);
            parcel.writeInt(getRotation());
            parcel.writeInt(getSampleSize());
        }

        protected ActivityResult(Parcel parcel) {
            super(null, (Uri) parcel.readParcelable(Uri.class.getClassLoader()), null, (Uri) parcel.readParcelable(Uri.class.getClassLoader()), (Exception) parcel.readSerializable(), parcel.createFloatArray(), (Rect) parcel.readParcelable(Rect.class.getClassLoader()), (Rect) parcel.readParcelable(Rect.class.getClassLoader()), parcel.readInt(), parcel.readInt());
        }
    }

    /* loaded from: classes3.dex */
    public static final class b {
        @Nullable

        /* renamed from: a  reason: collision with root package name */
        private final Uri f58828a;

        /* renamed from: b  reason: collision with root package name */
        private final CropImageOptions f58829b;

        public b A(Rect rect) {
            this.f58829b.initialCropWindowRectangle = rect;
            return this;
        }

        public b B(int i4) {
            this.f58829b.initialRotation = (i4 + 360) % 360;
            return this;
        }

        public b C(int i4, int i10) {
            CropImageOptions cropImageOptions = this.f58829b;
            cropImageOptions.maxCropResultWidth = i4;
            cropImageOptions.maxCropResultHeight = i10;
            return this;
        }

        public b D(int i4) {
            this.f58829b.maxZoom = i4;
            return this;
        }

        public b E(int i4, int i10) {
            CropImageOptions cropImageOptions = this.f58829b;
            cropImageOptions.minCropResultWidth = i4;
            cropImageOptions.minCropResultHeight = i10;
            return this;
        }

        public b F(int i4, int i10) {
            CropImageOptions cropImageOptions = this.f58829b;
            cropImageOptions.minCropWindowWidth = i4;
            cropImageOptions.minCropWindowHeight = i10;
            return this;
        }

        public b G(boolean z9) {
            this.f58829b.multiTouchEnabled = z9;
            return this;
        }

        public b H(boolean z9) {
            this.f58829b.noOutputImage = z9;
            return this;
        }

        public b I(Bitmap.CompressFormat compressFormat) {
            this.f58829b.outputCompressFormat = compressFormat;
            return this;
        }

        public b J(int i4) {
            this.f58829b.outputCompressQuality = i4;
            return this;
        }

        public b K(Uri uri) {
            this.f58829b.outputUri = uri;
            return this;
        }

        public b L(int i4, int i10) {
            return M(i4, i10, CropImageView.RequestSizeOptions.RESIZE_INSIDE);
        }

        public b M(int i4, int i10, CropImageView.RequestSizeOptions requestSizeOptions) {
            CropImageOptions cropImageOptions = this.f58829b;
            cropImageOptions.outputRequestWidth = i4;
            cropImageOptions.outputRequestHeight = i10;
            cropImageOptions.outputRequestSizeOptions = requestSizeOptions;
            return this;
        }

        public b N(int i4) {
            this.f58829b.rotationDegrees = (i4 + 360) % 360;
            return this;
        }

        public b O(@NonNull CropImageView.ScaleType scaleType) {
            this.f58829b.scaleType = scaleType;
            return this;
        }

        public b P(boolean z9) {
            this.f58829b.showCropOverlay = z9;
            return this;
        }

        public b Q(float f10) {
            this.f58829b.snapRadius = f10;
            return this;
        }

        public b R(float f10) {
            this.f58829b.touchRadius = f10;
            return this;
        }

        public void S(@NonNull Activity activity) {
            this.f58829b.validate();
            activity.startActivityForResult(a(activity), 203);
        }

        public void T(@NonNull Activity activity, @Nullable Class<?> cls) {
            this.f58829b.validate();
            activity.startActivityForResult(b(activity, cls), 203);
        }

        @RequiresApi(api = 11)
        public void U(@NonNull Context context, @NonNull Fragment fragment) {
            fragment.startActivityForResult(a(context), 203);
        }

        @RequiresApi(api = 11)
        public void V(@NonNull Context context, @NonNull Fragment fragment, @Nullable Class<?> cls) {
            fragment.startActivityForResult(b(context, cls), 203);
        }

        public void W(@NonNull Context context, @NonNull androidx.fragment.app.Fragment fragment) {
            fragment.startActivityForResult(a(context), 203);
        }

        public void X(@NonNull Context context, @NonNull androidx.fragment.app.Fragment fragment, @Nullable Class<?> cls) {
            fragment.startActivityForResult(b(context, cls), 203);
        }

        public Intent a(@NonNull Context context) {
            return b(context, CropImageActivity.class);
        }

        public Intent b(@NonNull Context context, @Nullable Class<?> cls) {
            this.f58829b.validate();
            Intent intent = new Intent();
            intent.setClass(context, cls);
            Bundle bundle = new Bundle();
            bundle.putParcelable(CropImage.f58819a, this.f58828a);
            bundle.putParcelable(CropImage.f58820b, this.f58829b);
            intent.putExtra(CropImage.f58821c, bundle);
            return intent;
        }

        public b c(int i4) {
            this.f58829b.activityMenuIconColor = i4;
            return this;
        }

        public b d(CharSequence charSequence) {
            this.f58829b.activityTitle = charSequence;
            return this;
        }

        public b e(boolean z9) {
            this.f58829b.allowCounterRotation = z9;
            return this;
        }

        public b f(boolean z9) {
            this.f58829b.allowFlipping = z9;
            return this;
        }

        public b g(boolean z9) {
            this.f58829b.allowRotation = z9;
            return this;
        }

        public b h(int i4, int i10) {
            CropImageOptions cropImageOptions = this.f58829b;
            cropImageOptions.aspectRatioX = i4;
            cropImageOptions.aspectRatioY = i10;
            cropImageOptions.fixAspectRatio = true;
            return this;
        }

        public b i(boolean z9) {
            this.f58829b.autoZoomEnabled = z9;
            return this;
        }

        public b j(int i4) {
            this.f58829b.backgroundColor = i4;
            return this;
        }

        public b k(int i4) {
            this.f58829b.borderCornerColor = i4;
            return this;
        }

        public b l(float f10) {
            this.f58829b.borderCornerLength = f10;
            return this;
        }

        public b m(float f10) {
            this.f58829b.borderCornerOffset = f10;
            return this;
        }

        public b n(float f10) {
            this.f58829b.borderCornerThickness = f10;
            return this;
        }

        public b o(int i4) {
            this.f58829b.borderLineColor = i4;
            return this;
        }

        public b p(float f10) {
            this.f58829b.borderLineThickness = f10;
            return this;
        }

        public b q(@DrawableRes int i4) {
            this.f58829b.cropMenuCropButtonIcon = i4;
            return this;
        }

        public b r(CharSequence charSequence) {
            this.f58829b.cropMenuCropButtonTitle = charSequence;
            return this;
        }

        public b s(@NonNull CropImageView.CropShape cropShape) {
            this.f58829b.cropShape = cropShape;
            return this;
        }

        public b t(boolean z9) {
            this.f58829b.fixAspectRatio = z9;
            return this;
        }

        public b u(boolean z9) {
            this.f58829b.flipHorizontally = z9;
            return this;
        }

        public b v(boolean z9) {
            this.f58829b.flipVertically = z9;
            return this;
        }

        public b w(@NonNull CropImageView.Guidelines guidelines) {
            this.f58829b.guidelines = guidelines;
            return this;
        }

        public b x(int i4) {
            this.f58829b.guidelinesColor = i4;
            return this;
        }

        public b y(float f10) {
            this.f58829b.guidelinesThickness = f10;
            return this;
        }

        public b z(float f10) {
            this.f58829b.initialCropWindowPaddingRatio = f10;
            return this;
        }

        private b(@Nullable Uri uri) {
            this.f58828a = uri;
            this.f58829b = new CropImageOptions();
        }
    }

    private CropImage() {
    }

    public static b a() {
        return new b(null);
    }

    public static b b(@Nullable Uri uri) {
        return new b(uri);
    }

    public static ActivityResult c(@Nullable Intent intent) {
        if (intent != null) {
            return (ActivityResult) intent.getParcelableExtra(f58822d);
        }
        return null;
    }

    public static Intent d(@NonNull Context context, Uri uri) {
        Intent intent = new Intent("android.media.action.IMAGE_CAPTURE");
        if (uri == null) {
            uri = f(context);
        }
        intent.putExtra("output", uri);
        return intent;
    }

    public static List<Intent> e(@NonNull Context context, @NonNull PackageManager packageManager) {
        ArrayList arrayList = new ArrayList();
        Uri f10 = f(context);
        Intent intent = new Intent("android.media.action.IMAGE_CAPTURE");
        for (ResolveInfo resolveInfo : packageManager.queryIntentActivities(intent, 0)) {
            Intent intent2 = new Intent(intent);
            ActivityInfo activityInfo = resolveInfo.activityInfo;
            intent2.setComponent(new ComponentName(activityInfo.packageName, activityInfo.name));
            intent2.setPackage(resolveInfo.activityInfo.packageName);
            if (f10 != null) {
                intent2.putExtra("output", f10);
            }
            arrayList.add(intent2);
        }
        return arrayList;
    }

    public static Uri f(@NonNull Context context) {
        File externalCacheDir = context.getExternalCacheDir();
        if (externalCacheDir != null) {
            return Uri.fromFile(new File(externalCacheDir.getPath(), "pickImageResult.jpeg"));
        }
        return null;
    }

    public static List<Intent> g(@NonNull PackageManager packageManager, String str, boolean z9) {
        ArrayList arrayList = new ArrayList();
        Intent intent = str == "android.intent.action.GET_CONTENT" ? new Intent(str) : new Intent(str, MediaStore.Images.Media.EXTERNAL_CONTENT_URI);
        intent.setType("image/*");
        for (ResolveInfo resolveInfo : packageManager.queryIntentActivities(intent, 0)) {
            Intent intent2 = new Intent(intent);
            ActivityInfo activityInfo = resolveInfo.activityInfo;
            intent2.setComponent(new ComponentName(activityInfo.packageName, activityInfo.name));
            intent2.setPackage(resolveInfo.activityInfo.packageName);
            arrayList.add(intent2);
        }
        if (!z9) {
            Iterator it = arrayList.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                Intent intent3 = (Intent) it.next();
                if (intent3.getComponent().getClassName().equals("com.android.documentsui.DocumentsActivity")) {
                    arrayList.remove(intent3);
                    break;
                }
            }
        }
        return arrayList;
    }

    public static Intent h(@NonNull Context context) {
        return i(context, context.getString(g.k.J), false, true);
    }

    public static Intent i(@NonNull Context context, CharSequence charSequence, boolean z9, boolean z10) {
        Intent intent;
        ArrayList arrayList = new ArrayList();
        PackageManager packageManager = context.getPackageManager();
        if (!l(context) && z10) {
            arrayList.addAll(e(context, packageManager));
        }
        List<Intent> g4 = g(packageManager, "android.intent.action.GET_CONTENT", z9);
        if (g4.size() == 0) {
            g4 = g(packageManager, "android.intent.action.PICK", z9);
        }
        arrayList.addAll(g4);
        if (arrayList.isEmpty()) {
            intent = new Intent();
        } else {
            intent = (Intent) arrayList.get(arrayList.size() - 1);
            arrayList.remove(arrayList.size() - 1);
        }
        Intent createChooser = Intent.createChooser(intent, charSequence);
        createChooser.putExtra("android.intent.extra.INITIAL_INTENTS", (Parcelable[]) arrayList.toArray(new Parcelable[arrayList.size()]));
        return createChooser;
    }

    public static Uri j(@NonNull Context context, @Nullable Intent intent) {
        String action;
        boolean z9 = true;
        if (intent != null && intent.getData() != null && ((action = intent.getAction()) == null || !action.equals("android.media.action.IMAGE_CAPTURE"))) {
            z9 = false;
        }
        return (z9 || intent.getData() == null) ? f(context) : intent.getData();
    }

    public static boolean k(@NonNull Context context, @NonNull String str) {
        try {
            String[] strArr = context.getPackageManager().getPackageInfo(context.getPackageName(), 4096).requestedPermissions;
            if (strArr != null && strArr.length > 0) {
                for (String str2 : strArr) {
                    if (str2.equalsIgnoreCase(str)) {
                        return true;
                    }
                }
            }
        } catch (PackageManager.NameNotFoundException unused) {
        }
        return false;
    }

    public static boolean l(@NonNull Context context) {
        return Build.VERSION.SDK_INT >= 23 && k(context, "android.permission.CAMERA") && context.checkSelfPermission("android.permission.CAMERA") != 0;
    }

    public static boolean m(@NonNull Context context, @NonNull Uri uri) {
        return Build.VERSION.SDK_INT >= 23 && context.checkSelfPermission("android.permission.READ_EXTERNAL_STORAGE") != 0 && n(context, uri);
    }

    public static boolean n(@NonNull Context context, @NonNull Uri uri) {
        try {
            InputStream openInputStream = context.getContentResolver().openInputStream(uri);
            if (openInputStream != null) {
                openInputStream.close();
                return false;
            }
            return false;
        } catch (Exception unused) {
            return true;
        }
    }

    public static void o(@NonNull Activity activity) {
        activity.startActivityForResult(h(activity), 200);
    }

    public static void p(@NonNull Context context, @NonNull androidx.fragment.app.Fragment fragment) {
        fragment.startActivityForResult(h(context), 200);
    }

    public static Bitmap q(@NonNull Bitmap bitmap) {
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        Bitmap createBitmap = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(createBitmap);
        Paint paint = new Paint();
        paint.setAntiAlias(true);
        canvas.drawARGB(0, 0, 0, 0);
        paint.setColor(-12434878);
        canvas.drawOval(new RectF(0.0f, 0.0f, width, height), paint);
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
        canvas.drawBitmap(bitmap, 0.0f, 0.0f, paint);
        bitmap.recycle();
        return createBitmap;
    }
}
