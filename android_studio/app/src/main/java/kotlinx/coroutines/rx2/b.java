package kotlinx.coroutines.rx2;

import kotlin.Metadata;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: RxAwait.kt */
@Metadata(bv = {}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\b\r\b\u0082\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0011\b\u0002\u0012\u0006\u0010\b\u001a\u00020\u0002¢\u0006\u0004\b\t\u0010\nJ\b\u0010\u0003\u001a\u00020\u0002H\u0016R\u0017\u0010\b\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000e¨\u0006\u000f"}, d2 = {"Lkotlinx/coroutines/rx2/b;", "", "", "toString", "a", "Ljava/lang/String;", "b", "()Ljava/lang/String;", "s", "<init>", "(Ljava/lang/String;ILjava/lang/String;)V", "FIRST", "FIRST_OR_DEFAULT", "LAST", "SINGLE", "kotlinx-coroutines-rx2"}, k = 1, mv = {1, 6, 0})
/* loaded from: classes4.dex */
public enum b {
    FIRST("awaitFirst"),
    FIRST_OR_DEFAULT("awaitFirstOrDefault"),
    LAST("awaitLast"),
    SINGLE("awaitSingle");
    
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final String f86520a;

    b(String str) {
        this.f86520a = str;
    }

    @m8.g
    public final String b() {
        return this.f86520a;
    }

    @Override // java.lang.Enum
    @m8.g
    public String toString() {
        return this.f86520a;
    }
}
