package com.giphy.sdk.ui;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: GPHSuggestions.kt */
@Metadata(bv = {}, d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u000e\b\u0080\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0004¢\u0006\u0004\b\u0019\u0010\u001aJ\t\u0010\u0003\u001a\u00020\u0002HÆ\u0003J\t\u0010\u0005\u001a\u00020\u0004HÆ\u0003J\u001d\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0006\u001a\u00020\u00022\b\b\u0002\u0010\u0007\u001a\u00020\u0004HÆ\u0001J\t\u0010\t\u001a\u00020\u0004HÖ\u0001J\t\u0010\u000b\u001a\u00020\nHÖ\u0001J\u0013\u0010\u000e\u001a\u00020\r2\b\u0010\f\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\"\u0010\u0006\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013R\"\u0010\u0007\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0005\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018¨\u0006\u001b"}, d2 = {"Lcom/giphy/sdk/ui/h;", "", "Lcom/giphy/sdk/ui/GPHSearchSuggestionType;", "a", "", "b", "type", "term", "c", "toString", "", "hashCode", "other", "", "equals", "Lcom/giphy/sdk/ui/GPHSearchSuggestionType;", "f", "()Lcom/giphy/sdk/ui/GPHSearchSuggestionType;", "h", "(Lcom/giphy/sdk/ui/GPHSearchSuggestionType;)V", "Ljava/lang/String;", "e", "()Ljava/lang/String;", "g", "(Ljava/lang/String;)V", "<init>", "(Lcom/giphy/sdk/ui/GPHSearchSuggestionType;Ljava/lang/String;)V", "giphy-ui-2.1.9_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes2.dex */
public final class h {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private GPHSearchSuggestionType f17056a;
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private String f17057b;

    public h(@m8.g GPHSearchSuggestionType type, @m8.g String term) {
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(term, "term");
        this.f17056a = type;
        this.f17057b = term;
    }

    public static /* synthetic */ h d(h hVar, GPHSearchSuggestionType gPHSearchSuggestionType, String str, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            gPHSearchSuggestionType = hVar.f17056a;
        }
        if ((i4 & 2) != 0) {
            str = hVar.f17057b;
        }
        return hVar.c(gPHSearchSuggestionType, str);
    }

    @m8.g
    public final GPHSearchSuggestionType a() {
        return this.f17056a;
    }

    @m8.g
    public final String b() {
        return this.f17057b;
    }

    @m8.g
    public final h c(@m8.g GPHSearchSuggestionType type, @m8.g String term) {
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(term, "term");
        return new h(type, term);
    }

    @m8.g
    public final String e() {
        return this.f17057b;
    }

    public boolean equals(@m8.h Object obj) {
        if (this != obj) {
            if (obj instanceof h) {
                h hVar = (h) obj;
                return Intrinsics.areEqual(this.f17056a, hVar.f17056a) && Intrinsics.areEqual(this.f17057b, hVar.f17057b);
            }
            return false;
        }
        return true;
    }

    @m8.g
    public final GPHSearchSuggestionType f() {
        return this.f17056a;
    }

    public final void g(@m8.g String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.f17057b = str;
    }

    public final void h(@m8.g GPHSearchSuggestionType gPHSearchSuggestionType) {
        Intrinsics.checkNotNullParameter(gPHSearchSuggestionType, "<set-?>");
        this.f17056a = gPHSearchSuggestionType;
    }

    public int hashCode() {
        GPHSearchSuggestionType gPHSearchSuggestionType = this.f17056a;
        int hashCode = (gPHSearchSuggestionType != null ? gPHSearchSuggestionType.hashCode() : 0) * 31;
        String str = this.f17057b;
        return hashCode + (str != null ? str.hashCode() : 0);
    }

    @m8.g
    public String toString() {
        return "GPHSuggestion(type=" + this.f17056a + ", term=" + this.f17057b + ")";
    }
}
