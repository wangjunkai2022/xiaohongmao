package kotlin.reflect.jvm.internal.impl.load.java;

import java.util.List;
import java.util.Map;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import m8.g;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Jsr305Settings.kt */
/* loaded from: classes4.dex */
public final class Jsr305Settings$description$2 extends Lambda implements Function0<String[]> {
    final /* synthetic */ Jsr305Settings this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Jsr305Settings$description$2(Jsr305Settings jsr305Settings) {
        super(0);
        this.this$0 = jsr305Settings;
    }

    @Override // kotlin.jvm.functions.Function0
    @g
    public final String[] invoke() {
        List createListBuilder;
        List build;
        Jsr305Settings jsr305Settings = this.this$0;
        createListBuilder = CollectionsKt__CollectionsJVMKt.createListBuilder();
        createListBuilder.add(jsr305Settings.getGlobalLevel().getDescription());
        ReportLevel migrationLevel = jsr305Settings.getMigrationLevel();
        if (migrationLevel != null) {
            createListBuilder.add("under-migration:" + migrationLevel.getDescription());
        }
        for (Map.Entry<FqName, ReportLevel> entry : jsr305Settings.getUserDefinedLevelForSpecificAnnotation().entrySet()) {
            createListBuilder.add('@' + entry.getKey() + ':' + entry.getValue().getDescription());
        }
        build = CollectionsKt__CollectionsJVMKt.build(createListBuilder);
        Object[] array = build.toArray(new String[0]);
        Intrinsics.checkNotNull(array, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
        return (String[]) array;
    }
}
