package androidx.room;

import androidx.arch.core.util.Function;
import androidx.sqlite.db.SupportSQLiteStatement;

/* compiled from: R8$$SyntheticClass */
/* loaded from: classes.dex */
public final /* synthetic */ class a0 implements Function {

    /* renamed from: a  reason: collision with root package name */
    public static final /* synthetic */ a0 f575a = new a0();

    private /* synthetic */ a0() {
    }

    @Override // androidx.arch.core.util.Function
    public final Object apply(Object obj) {
        Object execute;
        execute = ((SupportSQLiteStatement) obj).execute();
        return execute;
    }
}
