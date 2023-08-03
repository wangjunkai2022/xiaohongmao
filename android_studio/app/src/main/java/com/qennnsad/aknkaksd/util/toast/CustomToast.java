package com.qennnsad.aknkaksd.util.toast;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import android.widget.Toast;
import androidx.annotation.ColorRes;
import androidx.annotation.DrawableRes;
import androidx.core.content.ContextCompat;
import com.didi.live.spring.R;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: CustomToast.kt */
@Metadata(bv = {}, d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001:\u0002\n\u000bB#\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\f"}, d2 = {"Lcom/qennnsad/aknkaksd/util/toast/CustomToast;", "Landroid/widget/Toast;", "Landroid/content/Context;", "context", "", "message", "Lcom/qennnsad/aknkaksd/util/toast/CustomToast$Type;", "type", "<init>", "(Landroid/content/Context;Ljava/lang/String;Lcom/qennnsad/aknkaksd/util/toast/CustomToast$Type;)V", "a", "Type", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class CustomToast extends Toast {

    /* compiled from: CustomToast.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\b\n\u0002\b\u000e\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u001d\b\u0002\u0012\b\b\u0001\u0010\u0007\u001a\u00020\u0002\u0012\b\b\u0001\u0010\n\u001a\u00020\u0002¢\u0006\u0004\b\u000b\u0010\fR\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u0017\u0010\n\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\b\u0010\u0004\u001a\u0004\b\t\u0010\u0006j\u0002\b\rj\u0002\b\u000ej\u0002\b\u000f¨\u0006\u0010"}, d2 = {"Lcom/qennnsad/aknkaksd/util/toast/CustomToast$Type;", "", "", "a", "I", "getIcon", "()I", "icon", "b", "getTextColor", "textColor", "<init>", "(Ljava/lang/String;III)V", "Normal", "Failure", "Warn", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public enum Type {
        Normal(0, R.color.black),
        Failure(R.drawable.ic_toast_failure, R.color.toast_failure),
        Warn(R.drawable.ic_toast_warning, R.color.toast_failure);
        

        /* renamed from: a  reason: collision with root package name */
        private final int f55046a;

        /* renamed from: b  reason: collision with root package name */
        private final int f55047b;

        Type(@DrawableRes int i4, @ColorRes int i10) {
            this.f55046a = i4;
            this.f55047b = i10;
        }

        public final int getIcon() {
            return this.f55046a;
        }

        public final int getTextColor() {
            return this.f55047b;
        }
    }

    private CustomToast(Context context, String str, Type type) {
        super(context);
        View inflate = LayoutInflater.from(context).inflate(R.layout.custom_toast, (ViewGroup) null);
        TextView textView = (TextView) inflate.findViewById(R.id.toast_message);
        textView.setText(str);
        if (type != Type.Normal) {
            textView.setCompoundDrawablesWithIntrinsicBounds(type.getIcon(), 0, 0, 0);
        } else {
            textView.setCompoundDrawablesWithIntrinsicBounds(0, 0, 0, 0);
        }
        textView.setTextColor(ContextCompat.getColor(context, type.getTextColor()));
        setGravity(16, 0, 0);
        setView(inflate);
        setDuration(0);
    }

    public /* synthetic */ CustomToast(Context context, String str, Type type, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, str, type);
    }

    /* compiled from: CustomToast.kt */
    @Metadata(bv = {}, d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0006\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0006\u001a\u00020\u0004\u0012\b\b\u0002\u0010\n\u001a\u00020\u0007\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000b¢\u0006\u0004\b\u000f\u0010\u0010J\u0006\u0010\u0003\u001a\u00020\u0002R\u0014\u0010\u0006\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u0005R\u0014\u0010\n\u001a\u00020\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\tR\u0016\u0010\u000e\u001a\u0004\u0018\u00010\u000b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\r¨\u0006\u0011"}, d2 = {"Lcom/qennnsad/aknkaksd/util/toast/CustomToast$a;", "", "Lcom/qennnsad/aknkaksd/util/toast/CustomToast;", "a", "Landroid/content/Context;", "Landroid/content/Context;", "context", "Lcom/qennnsad/aknkaksd/util/toast/CustomToast$Type;", "b", "Lcom/qennnsad/aknkaksd/util/toast/CustomToast$Type;", "type", "", "c", "Ljava/lang/String;", "message", "<init>", "(Landroid/content/Context;Lcom/qennnsad/aknkaksd/util/toast/CustomToast$Type;Ljava/lang/String;)V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class a {
        @g

        /* renamed from: a  reason: collision with root package name */
        private final Context f55048a;
        @g

        /* renamed from: b  reason: collision with root package name */
        private final Type f55049b;
        @h

        /* renamed from: c  reason: collision with root package name */
        private final String f55050c;

        public a(@g Context context, @g Type type, @h String str) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(type, "type");
            this.f55048a = context;
            this.f55049b = type;
            this.f55050c = str;
        }

        @g
        public final CustomToast a() {
            return new CustomToast(this.f55048a, this.f55050c, this.f55049b, null);
        }

        public /* synthetic */ a(Context context, Type type, String str, int i4, DefaultConstructorMarker defaultConstructorMarker) {
            this(context, (i4 & 2) != 0 ? Type.Normal : type, (i4 & 4) != 0 ? null : str);
        }
    }
}
