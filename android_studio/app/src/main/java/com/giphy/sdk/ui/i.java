package com.giphy.sdk.ui;

import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;

/* compiled from: GPHSuggestions.kt */
@Metadata(bv = {}, d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\b`\u0018\u00002\u00020\u0001Jb\u0010\u0012\u001a\u00020\u00102\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\b\b\u0002\u0010\u0007\u001a\u00020\u00062>\u0010\u0011\u001a:\u0012\u0019\u0012\u0017\u0012\u0004\u0012\u00020\n0\t¢\u0006\f\b\u000b\u0012\b\b\f\u0012\u0004\b\b(\r\u0012\u0015\u0012\u0013\u0018\u00010\u000e¢\u0006\f\b\u000b\u0012\b\b\f\u0012\u0004\b\b(\u000f\u0012\u0004\u0012\u00020\u00100\bH&¨\u0006\u0013"}, d2 = {"Lcom/giphy/sdk/ui/i;", "", "Lcom/giphy/sdk/ui/GPHSearchSuggestionType;", "type", "", "term", "", "ignoreCache", "Lkotlin/Function2;", "", "Lcom/giphy/sdk/ui/h;", "Lkotlin/ParameterName;", "name", "result", "", "e", "", "completionHandler", "a", "giphy-ui-2.1.9_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes2.dex */
public interface i {

    /* compiled from: GPHSuggestions.kt */
    @Metadata(bv = {1, 0, 3}, k = 3, mv = {1, 4, 1})
    /* loaded from: classes2.dex */
    public static final class a {
        public static /* synthetic */ void a(i iVar, GPHSearchSuggestionType gPHSearchSuggestionType, String str, boolean z9, Function2 function2, int i4, Object obj) {
            if (obj == null) {
                if ((i4 & 4) != 0) {
                    z9 = false;
                }
                iVar.a(gPHSearchSuggestionType, str, z9, function2);
                return;
            }
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: suggestions");
        }
    }

    void a(@m8.g GPHSearchSuggestionType gPHSearchSuggestionType, @m8.g String str, boolean z9, @m8.g Function2<? super List<h>, ? super Throwable, Unit> function2);
}
