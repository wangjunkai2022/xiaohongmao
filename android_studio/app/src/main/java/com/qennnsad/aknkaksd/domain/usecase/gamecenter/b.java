package com.qennnsad.aknkaksd.domain.usecase.gamecenter;

import android.content.Context;
import com.qennnsad.aknkaksd.data.repository.m;
import io.reactivex.z;
import java.io.FileOutputStream;
import java.io.IOException;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.jvm.internal.Intrinsics;
import n7.o;
import okhttp3.ResponseBody;
import timber.log.Timber;

/* compiled from: PrepareSvgaUseCase.kt */
@Metadata(bv = {}, d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0001\bB\u001b\b\u0007\u0012\b\b\u0001\u0010\f\u001a\u00020\u0007\u0012\u0006\u0010\u0010\u001a\u00020\r¢\u0006\u0004\b\u0011\u0010\u0012J\u0016\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00030\u00052\u0006\u0010\u0004\u001a\u00020\u0002H\u0014R\u0017\u0010\f\u001a\u00020\u00078\u0006¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000bR\u0014\u0010\u0010\u001a\u00020\r8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\u000f¨\u0006\u0013"}, d2 = {"Lcom/qennnsad/aknkaksd/domain/usecase/gamecenter/b;", "Lcom/qennnsad/aknkaksd/domain/base/h;", "Lcom/qennnsad/aknkaksd/domain/usecase/gamecenter/b$a;", "", "params", "Lio/reactivex/z;", "d", "Landroid/content/Context;", "a", "Landroid/content/Context;", "f", "()Landroid/content/Context;", "context", "Lcom/qennnsad/aknkaksd/data/repository/m;", "b", "Lcom/qennnsad/aknkaksd/data/repository/m;", "sourceFactory", "<init>", "(Landroid/content/Context;Lcom/qennnsad/aknkaksd/data/repository/m;)V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class b extends com.qennnsad.aknkaksd.domain.base.h<a, Unit> {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final Context f48176a;
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private final m f48177b;

    /* compiled from: PrepareSvgaUseCase.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\t\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\u0006\u0010\b\u001a\u00020\u0002¢\u0006\u0004\b\t\u0010\nR\u0017\u0010\u0006\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0003\u0010\u0005R\u0017\u0010\b\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0007\u0010\u0004\u001a\u0004\b\u0007\u0010\u0005¨\u0006\u000b"}, d2 = {"Lcom/qennnsad/aknkaksd/domain/usecase/gamecenter/b$a;", "", "", "a", "Ljava/lang/String;", "()Ljava/lang/String;", "fileName", "b", "url", "<init>", "(Ljava/lang/String;Ljava/lang/String;)V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class a {
        @m8.g

        /* renamed from: a  reason: collision with root package name */
        private final String f48178a;
        @m8.g

        /* renamed from: b  reason: collision with root package name */
        private final String f48179b;

        public a(@m8.g String fileName, @m8.g String url) {
            Intrinsics.checkNotNullParameter(fileName, "fileName");
            Intrinsics.checkNotNullParameter(url, "url");
            this.f48178a = fileName;
            this.f48179b = url;
        }

        @m8.g
        public final String a() {
            return this.f48178a;
        }

        @m8.g
        public final String b() {
            return this.f48179b;
        }
    }

    @u7.a
    public b(@m6.b @m8.g Context context, @m8.g m sourceFactory) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(sourceFactory, "sourceFactory");
        this.f48176a = context;
        this.f48177b = sourceFactory;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit e(b this$0, a params, ResponseBody it) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(params, "$params");
        Intrinsics.checkNotNullParameter(it, "it");
        FileOutputStream openFileOutput = this$0.f48176a.openFileOutput(params.a(), 0);
        try {
            try {
                openFileOutput.write(it.bytes());
            } catch (IOException e4) {
                Timber.b bVar = Timber.f93860a;
                bVar.d("Error loading svga from " + params.b(), e4);
            }
            return Unit.INSTANCE;
        } finally {
            openFileOutput.close();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.qennnsad.aknkaksd.domain.base.h
    @m8.g
    /* renamed from: d */
    public z<Unit> a(@m8.g final a params) {
        boolean contains;
        Intrinsics.checkNotNullParameter(params, "params");
        String[] fileList = this.f48176a.fileList();
        Intrinsics.checkNotNullExpressionValue(fileList, "context.fileList()");
        contains = ArraysKt___ArraysKt.contains(fileList, params.a());
        if (contains) {
            z<Unit> empty = z.empty();
            Intrinsics.checkNotNullExpressionValue(empty, "empty()");
            return empty;
        }
        z map = m.g(this.f48177b, false, 1, null).downloadFile(this.f48177b.i(params.b())).map(new o() { // from class: com.qennnsad.aknkaksd.domain.usecase.gamecenter.a
            @Override // n7.o
            public final Object apply(Object obj) {
                Unit e4;
                e4 = b.e(b.this, params, (ResponseBody) obj);
                return e4;
            }
        });
        Intrinsics.checkNotNullExpressionValue(map, "sourceFactory.create().d…)\n            }\n        }");
        return map;
    }

    @m8.g
    public final Context f() {
        return this.f48176a;
    }
}
