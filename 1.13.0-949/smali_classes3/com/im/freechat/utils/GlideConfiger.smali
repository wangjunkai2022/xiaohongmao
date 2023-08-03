.class public final Lcom/im/freechat/utils/GlideConfiger;
.super Lcom/bumptech/glide/module/a;
.source "GlideConfiger.kt"


# annotations
.annotation build Lb0/c;
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0018\u0010\u0008\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/im/freechat/utils/GlideConfiger;",
        "Lcom/bumptech/glide/module/a;",
        "Lcom/bumptech/glide/d;",
        "builder",
        "",
        "d",
        "Landroid/content/Context;",
        "context",
        "a",
        "<init>",
        "()V",
        "app_prodRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/bumptech/glide/module/a;-><init>()V

    return-void
.end method

.method private final d(Lcom/bumptech/glide/d;)V
    .locals 1

    const/4 v0, 0x2

    .line 1
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/d;->p(I)Lcom/bumptech/glide/d;

    .line 2
    new-instance v0, Lcom/im/freechat/utils/GlideConfiger$a;

    invoke-direct {v0}, Lcom/im/freechat/utils/GlideConfiger$a;-><init>()V

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/d;->a(Lcom/bumptech/glide/request/g;)Lcom/bumptech/glide/d;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/bumptech/glide/d;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/d;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "builder"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
