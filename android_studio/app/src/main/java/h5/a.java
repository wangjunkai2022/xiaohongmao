package h5;

import com.qennnsad.aknkaksd.presentation.ui.login.CaptchaType;
import kotlin.Metadata;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: CaptchaToken.kt */
@Metadata(bv = {}, d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\t\u0018\u00002\u00020\u0001B\u001d\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0007¢\u0006\u0004\b\u0015\u0010\u0016R\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R$\u0010\b\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR\u0011\u0010\u0011\u001a\u00020\u000e8F¢\u0006\u0006\u001a\u0004\b\u000f\u0010\u0010R$\u0010\u0012\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0012\u0010\t\u001a\u0004\b\u0013\u0010\u000b\"\u0004\b\u0014\u0010\r¨\u0006\u0017"}, d2 = {"Lh5/a;", "", "Lcom/qennnsad/aknkaksd/presentation/ui/login/CaptchaType;", "type", "Lcom/qennnsad/aknkaksd/presentation/ui/login/CaptchaType;", "b", "()Lcom/qennnsad/aknkaksd/presentation/ui/login/CaptchaType;", "", "value", "Ljava/lang/String;", "c", "()Ljava/lang/String;", "f", "(Ljava/lang/String;)V", "", "d", "()Z", "isOperable", "graphId", "a", "e", "<init>", "(Lcom/qennnsad/aknkaksd/presentation/ui/login/CaptchaType;Ljava/lang/String;)V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class a {
    @g

    /* renamed from: a  reason: collision with root package name */
    private final CaptchaType f69060a;
    @h

    /* renamed from: b  reason: collision with root package name */
    private String f69061b;
    @h

    /* renamed from: c  reason: collision with root package name */
    private String f69062c;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public a(@g CaptchaType type) {
        this(type, null, 2, null);
        Intrinsics.checkNotNullParameter(type, "type");
    }

    @JvmOverloads
    public a(@g CaptchaType type, @h String str) {
        Intrinsics.checkNotNullParameter(type, "type");
        this.f69060a = type;
        this.f69061b = str;
    }

    @h
    public final String a() {
        return this.f69062c;
    }

    @g
    public final CaptchaType b() {
        return this.f69060a;
    }

    @h
    public final String c() {
        return this.f69061b;
    }

    public final boolean d() {
        return this.f69060a != CaptchaType.None;
    }

    public final void e(@h String str) {
        this.f69062c = str;
    }

    public final void f(@h String str) {
        this.f69061b = str;
    }

    public /* synthetic */ a(CaptchaType captchaType, String str, int i4, DefaultConstructorMarker defaultConstructorMarker) {
        this(captchaType, (i4 & 2) != 0 ? null : str);
    }
}
