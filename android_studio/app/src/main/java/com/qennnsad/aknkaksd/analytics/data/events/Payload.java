package com.qennnsad.aknkaksd.analytics.data.events;

import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: Payload.kt */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u0015\u0012\u000e\b\u0002\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\u0002\u0010\u0005J\u000f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0003J\u0019\u0010\t\u001a\u00020\u00002\u000e\b\u0002\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0001J\u0013\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\r\u001a\u00020\u000eHÖ\u0001J\t\u0010\u000f\u001a\u00020\u0010HÖ\u0001R\u0017\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0011"}, d2 = {"Lcom/qennnsad/aknkaksd/analytics/data/events/Payload;", "", "parts", "", "Lcom/qennnsad/aknkaksd/analytics/data/events/Event;", "(Ljava/util/List;)V", "getParts", "()Ljava/util/List;", "component1", "copy", "equals", "", "other", "hashCode", "", "toString", "", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class Payload {
    @g
    private final List<Event> parts;

    public Payload() {
        this(null, 1, null);
    }

    public Payload(@g List<Event> parts) {
        Intrinsics.checkNotNullParameter(parts, "parts");
        this.parts = parts;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ Payload copy$default(Payload payload, List list, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            list = payload.parts;
        }
        return payload.copy(list);
    }

    @g
    public final List<Event> component1() {
        return this.parts;
    }

    @g
    public final Payload copy(@g List<Event> parts) {
        Intrinsics.checkNotNullParameter(parts, "parts");
        return new Payload(parts);
    }

    public boolean equals(@h Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof Payload) && Intrinsics.areEqual(this.parts, ((Payload) obj).parts);
    }

    @g
    public final List<Event> getParts() {
        return this.parts;
    }

    public int hashCode() {
        return this.parts.hashCode();
    }

    @g
    public String toString() {
        return "Payload(parts=" + this.parts + ')';
    }

    public /* synthetic */ Payload(List list, int i4, DefaultConstructorMarker defaultConstructorMarker) {
        this((i4 & 1) != 0 ? CollectionsKt__CollectionsKt.emptyList() : list);
    }
}
