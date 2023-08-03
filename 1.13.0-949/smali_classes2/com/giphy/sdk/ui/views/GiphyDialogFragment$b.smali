.class public interface abstract Lcom/giphy/sdk/ui/views/GiphyDialogFragment$b;
.super Ljava/lang/Object;
.source "GiphyDialogFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/giphy/sdk/ui/views/GiphyDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "b"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\u0008f\u0018\u00002\u00020\u0001J\"\u0010\t\u001a\u00020\u00082\u0006\u0010\u0003\u001a\u00020\u00022\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0007\u001a\u00020\u0006H&J\u0010\u0010\n\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u0006H&J\u0010\u0010\u000c\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\u0004H&\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/giphy/sdk/ui/views/GiphyDialogFragment$b;",
        "",
        "Lcom/giphy/sdk/core/models/Media;",
        "media",
        "",
        "searchTerm",
        "Lcom/giphy/sdk/ui/GPHContentType;",
        "selectedContentType",
        "",
        "b",
        "a",
        "term",
        "c",
        "giphy-ui-2.1.9_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# virtual methods
.method public abstract a(Lcom/giphy/sdk/ui/GPHContentType;)V
    .param p1    # Lcom/giphy/sdk/ui/GPHContentType;
        .annotation build Lm8/g;
        .end annotation
    .end param
.end method

.method public abstract b(Lcom/giphy/sdk/core/models/Media;Ljava/lang/String;Lcom/giphy/sdk/ui/GPHContentType;)V
    .param p1    # Lcom/giphy/sdk/core/models/Media;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p3    # Lcom/giphy/sdk/ui/GPHContentType;
        .annotation build Lm8/g;
        .end annotation
    .end param
.end method

.method public abstract c(Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
.end method
