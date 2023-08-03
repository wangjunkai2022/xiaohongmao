package eltos.simpledialogfragment;

import android.app.Dialog;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Icon;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Build;
import android.os.Bundle;
import android.util.Log;
import android.util.TypedValue;
import android.view.View;
import android.widget.ImageView;
import android.widget.ProgressBar;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.StyleRes;
import eltos.simpledialogfragment.c;
import java.lang.ref.WeakReference;

/* loaded from: classes3.dex */
public class SimpleImageDialog extends eltos.simpledialogfragment.b<SimpleImageDialog> {
    public static final String TAG = "SimpleImageDialog.";

    /* renamed from: s  reason: collision with root package name */
    protected static final String f63429s = "SimpleImageDialog.drawableRes";

    /* renamed from: t  reason: collision with root package name */
    protected static final String f63430t = "SimpleImageDialog.bitmap";

    /* renamed from: u  reason: collision with root package name */
    protected static final String f63431u = "SimpleImageDialog.uri";

    /* renamed from: v  reason: collision with root package name */
    protected static final String f63432v = "SimpleImageDialog.scale";

    /* renamed from: w  reason: collision with root package name */
    private static final String f63433w = "SimpleImageDialog.creatorClass";

    /* renamed from: r  reason: collision with root package name */
    private boolean f63434r = false;

    /* loaded from: classes3.dex */
    public enum Scale {
        FIT(3),
        SCROLL_HORIZONTAL(10),
        SCROLL_VERTICAL(11);
        

        /* renamed from: a  reason: collision with root package name */
        final int f63436a;

        Scale(int i4) {
            this.f63436a = i4;
        }
    }

    /* loaded from: classes3.dex */
    public interface a extends b<Bitmap> {
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public interface b<T> {
        T a(@Nullable String str, @NonNull Bundle bundle);
    }

    /* loaded from: classes3.dex */
    public interface c extends b<Drawable> {
    }

    /* loaded from: classes3.dex */
    public interface d extends b<Icon> {
    }

    /* loaded from: classes3.dex */
    private static class e extends AsyncTask<Bundle, Void, Object> {

        /* renamed from: a  reason: collision with root package name */
        WeakReference<ImageView> f63437a;

        /* renamed from: b  reason: collision with root package name */
        WeakReference<View> f63438b;

        e(ImageView imageView, View view) {
            this.f63437a = new WeakReference<>(imageView);
            this.f63438b = new WeakReference<>(view);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        /* renamed from: a */
        public Object doInBackground(Bundle... bundleArr) {
            Class cls;
            if (bundleArr.length != 0 && bundleArr[0] != null && (cls = (Class) bundleArr[0].getSerializable(SimpleImageDialog.f63433w)) != null) {
                try {
                    Bundle bundle = bundleArr[0].getBundle("SimpleDialog.bundle");
                    if (bundle == null) {
                        bundle = new Bundle();
                    }
                    return ((b) cls.getConstructor(new Class[0]).newInstance(new Object[0])).a(bundleArr[0].getString(SimpleImageDialog.TAG), bundle);
                } catch (Exception e4) {
                    Log.e(SimpleImageDialog.TAG, "Error: Instantiation of " + cls.getName() + " failed. Make sure the class is public and has a public default constructor. Also, nested classes should be static", e4);
                }
            }
            return null;
        }

        @Override // android.os.AsyncTask
        protected void onPostExecute(Object obj) {
            if (obj != null) {
                if (obj instanceof Bitmap) {
                    this.f63437a.get().setImageBitmap((Bitmap) obj);
                } else if (obj instanceof Drawable) {
                    this.f63437a.get().setImageDrawable((Drawable) obj);
                } else if (Build.VERSION.SDK_INT >= 23 && (obj instanceof Icon)) {
                    this.f63437a.get().setImageIcon((Icon) obj);
                }
            }
            this.f63437a.get().setVisibility(0);
            this.f63438b.get().setVisibility(8);
            super.onPostExecute(obj);
        }

        @Override // android.os.AsyncTask
        protected void onPreExecute() {
            this.f63437a.get().setVisibility(8);
            this.f63438b.get().setVisibility(0);
            super.onPreExecute();
        }
    }

    public SimpleImageDialog() {
        s0(null);
    }

    public static SimpleImageDialog W0() {
        return new SimpleImageDialog();
    }

    @Override // eltos.simpledialogfragment.b
    protected View M0(Bundle bundle) {
        View K0;
        Bundle Z = Z();
        Scale scale = Scale.FIT;
        int i4 = Z.getInt(f63432v, scale.f63436a);
        if (i4 == scale.f63436a) {
            K0 = K0(c.l.T0);
        } else if (i4 == Scale.SCROLL_VERTICAL.f63436a) {
            K0 = K0(c.l.V0);
        } else if (i4 != Scale.SCROLL_HORIZONTAL.f63436a) {
            return null;
        } else {
            K0 = K0(c.l.U0);
        }
        ImageView imageView = (ImageView) K0.findViewById(c.i.f64182h2);
        ProgressBar progressBar = (ProgressBar) K0.findViewById(c.i.G3);
        if (Z().containsKey(f63431u)) {
            imageView.setImageURI((Uri) Z().getParcelable(f63431u));
        } else if (Z().containsKey(f63429s)) {
            imageView.setImageResource(Z().getInt(f63429s));
        } else if (Z().containsKey(f63433w)) {
            Bundle Z2 = Z();
            Z2.putString(TAG, getTag());
            new e(imageView, progressBar).execute(Z2);
        } else if (Z().containsKey(f63430t)) {
            imageView.setImageBitmap((Bitmap) Z().getParcelable(f63430t));
        }
        return K0;
    }

    public SimpleImageDialog X0(@DrawableRes int i4) {
        return (SimpleImageDialog) t0(f63429s, i4);
    }

    @Deprecated
    public SimpleImageDialog Y0(Bitmap bitmap) {
        Z().putParcelable(f63430t, bitmap);
        return this;
    }

    public SimpleImageDialog Z0(Uri uri) {
        Z().putParcelable(f63431u, uri);
        return this;
    }

    public SimpleImageDialog a1(Class<? extends b> cls) {
        Z().putSerializable(f63433w, cls);
        return this;
    }

    public SimpleImageDialog b1(Scale scale) {
        return (SimpleImageDialog) t0(f63432v, scale.f63436a);
    }

    @Override // eltos.simpledialogfragment.f
    /* renamed from: c1 */
    public SimpleImageDialog E0(@StyleRes int i4) {
        this.f63434r = true;
        return (SimpleImageDialog) super.E0(i4);
    }

    @Override // eltos.simpledialogfragment.b, eltos.simpledialogfragment.f, androidx.fragment.app.DialogFragment
    @NonNull
    public Dialog onCreateDialog(Bundle bundle) {
        if (!this.f63434r) {
            TypedValue typedValue = new TypedValue();
            getContext().getTheme().resolveAttribute(c.d.A6, typedValue, true);
            if (typedValue.type == 1) {
                E0(typedValue.resourceId);
            } else {
                E0(c.o.f64676u3);
            }
        }
        return super.onCreateDialog(bundle);
    }
}
