package com.google.mlkit.common.model;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.google.android.gms.common.internal.u;
import com.google.mlkit.common.sdkinternal.ModelType;

/* compiled from: com.google.mlkit:common@@18.4.0 */
/* loaded from: classes2.dex */
public final class a extends d {

    /* renamed from: g  reason: collision with root package name */
    private final f f35743g;

    /* compiled from: com.google.mlkit:common@@18.4.0 */
    /* renamed from: com.google.mlkit.common.model.a$a  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public static class C0277a {
        @NonNull

        /* renamed from: a  reason: collision with root package name */
        private final f f35744a;

        public C0277a(@NonNull f fVar) {
            u.k(fVar);
            this.f35744a = fVar;
        }

        @NonNull
        public a a() {
            return new a(this.f35744a, null);
        }
    }

    /* synthetic */ a(f fVar, g gVar) {
        super(TextUtils.isEmpty(fVar.a()) ? "no_model_name" : fVar.a(), null, ModelType.CUSTOM);
        this.f35743g = fVar;
    }

    @NonNull
    @u2.a
    public f i() {
        return this.f35743g;
    }
}
