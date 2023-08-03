package org.koin.core;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import m8.g;
import z8.d;

/* compiled from: Koin.kt */
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0000\n\u0000\u0010\u0000\u001a\u00020\u0001\"\n\b\u0000\u0010\u0002\u0018\u0001*\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "", ExifInterface.GPS_DIRECTION_TRUE, "", "invoke"}, k = 3, mv = {1, 6, 0}, xi = 176)
/* loaded from: classes5.dex */
public final class Koin$createScope$2 extends Lambda implements Function0<String> {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ String f92404a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ d f92405b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Koin$createScope$2(String str, d dVar) {
        super(0);
        this.f92404a = str;
        this.f92405b = dVar;
    }

    @Override // kotlin.jvm.functions.Function0
    @g
    public final String invoke() {
        return "|- create scope - id:'" + this.f92404a + "' q:" + this.f92405b;
    }
}
