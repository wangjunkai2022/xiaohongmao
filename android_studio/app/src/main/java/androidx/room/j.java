package androidx.room;

import androidx.arch.core.util.Function;
import androidx.sqlite.db.SupportSQLiteDatabase;

/* compiled from: R8$$SyntheticClass */
/* loaded from: classes.dex */
public final /* synthetic */ class j implements Function {

    /* renamed from: a  reason: collision with root package name */
    public static final /* synthetic */ j f596a = new j();

    private /* synthetic */ j() {
    }

    @Override // androidx.arch.core.util.Function
    public final Object apply(Object obj) {
        return Boolean.valueOf(((SupportSQLiteDatabase) obj).isDatabaseIntegrityOk());
    }
}
