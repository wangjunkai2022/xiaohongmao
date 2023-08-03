package com.im.freechat.base;

import android.os.Bundle;
import android.view.LayoutInflater;
import androidx.appcompat.app.AppCompatActivity;
import androidx.core.os.BundleKt;
import androidx.exifinterface.media.ExifInterface;
import androidx.lifecycle.Observer;
import androidx.viewbinding.ViewBinding;
import com.im.freechat.base.a;
import io.sentry.Session;
import java.lang.Enum;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.jvm.internal.Intrinsics;
import m8.h;

/* compiled from: BaseViewModelActivity.kt */
@Metadata(bv = {}, d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0006\b&\u0018\u0000*\u000e\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u00028\u00000\u0001*\b\b\u0001\u0010\u0004*\u00020\u00032\u00020\u0005B\u0007¢\u0006\u0004\b!\u0010\"J\u0017\u0010\b\u001a\u00028\u00012\u0006\u0010\u0007\u001a\u00020\u0006H&¢\u0006\u0004\b\b\u0010\tJ!\u0010\u000e\u001a\u00020\r2\u0006\u0010\n\u001a\u00028\u00002\b\b\u0002\u0010\f\u001a\u00020\u000bH&¢\u0006\u0004\b\u000e\u0010\u000fJ\b\u0010\u0010\u001a\u00020\rH$J\u0012\u0010\u0012\u001a\u00020\r2\b\u0010\u0011\u001a\u0004\u0018\u00010\u000bH\u0014J\u000e\u0010\u0015\u001a\u00020\r2\u0006\u0010\u0014\u001a\u00020\u0013R\"\u0010\u001c\u001a\u00028\u00018\u0004@\u0004X\u0084.¢\u0006\u0012\n\u0004\b\u0016\u0010\u0017\u001a\u0004\b\u0018\u0010\u0019\"\u0004\b\u001a\u0010\u001bR\u001a\u0010 \u001a\b\u0012\u0004\u0012\u00028\u00000\u001d8&X¦\u0004¢\u0006\u0006\u001a\u0004\b\u001e\u0010\u001f¨\u0006#"}, d2 = {"Lcom/im/freechat/base/BaseViewModelActivity;", "", ExifInterface.GPS_DIRECTION_TRUE, "Landroidx/viewbinding/ViewBinding;", "VB", "Landroidx/appcompat/app/AppCompatActivity;", "Landroid/view/LayoutInflater;", "inflater", "R", "(Landroid/view/LayoutInflater;)Landroidx/viewbinding/ViewBinding;", "direction", "Landroid/os/Bundle;", "extras", "", "M", "(Ljava/lang/Enum;Landroid/os/Bundle;)V", Session.b.f81842c, "savedInstanceState", "onCreate", "Lcom/im/freechat/base/a$b;", "msg", "U", "a", "Landroidx/viewbinding/ViewBinding;", "I", "()Landroidx/viewbinding/ViewBinding;", ExifInterface.LATITUDE_SOUTH, "(Landroidx/viewbinding/ViewBinding;)V", "binding", "Lcom/im/freechat/base/a;", "J", "()Lcom/im/freechat/base/a;", "viewModel", "<init>", "()V", "app_prodRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes.dex */
public abstract class BaseViewModelActivity<T extends Enum<T>, VB extends ViewBinding> extends AppCompatActivity {

    /* renamed from: a  reason: collision with root package name */
    protected VB f39457a;

    public static /* synthetic */ void N(BaseViewModelActivity baseViewModelActivity, Enum r12, Bundle bundle, int i4, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: navigate");
        }
        if ((i4 & 2) != 0) {
            bundle = BundleKt.bundleOf(new Pair[0]);
        }
        baseViewModelActivity.M(r12, bundle);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void O(BaseViewModelActivity this$0, o4.a aVar) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        a.b bVar = (a.b) aVar.a();
        if (bVar != null) {
            this$0.U(bVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final void P(BaseViewModelActivity this$0, o4.a aVar) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        a.C0301a c0301a = (a.C0301a) aVar.a();
        if (c0301a != null) {
            this$0.M(c0301a.e(), c0301a.f());
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @m8.g
    public final VB I() {
        VB vb = this.f39457a;
        if (vb != null) {
            return vb;
        }
        Intrinsics.throwUninitializedPropertyAccessException("binding");
        return null;
    }

    @m8.g
    public abstract a<T> J();

    public abstract void M(@m8.g T t9, @m8.g Bundle bundle);

    @m8.g
    public abstract VB R(@m8.g LayoutInflater layoutInflater);

    protected final void S(@m8.g VB vb) {
        Intrinsics.checkNotNullParameter(vb, "<set-?>");
        this.f39457a = vb;
    }

    public final void U(@m8.g a.b msg) {
        Intrinsics.checkNotNullParameter(msg, "msg");
        if (!(msg instanceof a.b.C0302a)) {
            if (msg instanceof a.b.C0303b) {
                com.im.freechat.extend.f.A(this, ((a.b.C0303b) msg).a());
                return;
            }
            return;
        }
        a.b.C0302a c0302a = (a.b.C0302a) msg;
        int b10 = c0302a.b();
        Object[] a10 = c0302a.a();
        String string = getString(b10, Arrays.copyOf(a10, a10.length));
        Intrinsics.checkNotNullExpressionValue(string, "getString(msg.msgId, *msg.formatArgs)");
        com.im.freechat.extend.f.A(this, string);
    }

    protected abstract void init();

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(@h Bundle bundle) {
        super.onCreate(bundle);
        LayoutInflater layoutInflater = getLayoutInflater();
        Intrinsics.checkNotNullExpressionValue(layoutInflater, "layoutInflater");
        S(R(layoutInflater));
        setContentView(I().getRoot());
        init();
        J().b().observe(this, new Observer() { // from class: com.im.freechat.base.c
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                BaseViewModelActivity.O(BaseViewModelActivity.this, (o4.a) obj);
            }
        });
        J().a().observe(this, new Observer() { // from class: com.im.freechat.base.b
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                BaseViewModelActivity.P(BaseViewModelActivity.this, (o4.a) obj);
            }
        });
    }
}
