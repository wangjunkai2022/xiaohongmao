.class public final Lcom/qennnsad/aknkaksd/util/img/GlideConfiger;
.super Lcom/bumptech/glide/module/a;
.source "GlideConfiger.kt"


# annotations
.annotation runtime Lb0/a;
    value = {
        Lcom/bumptech/glide/integration/okhttp3/a;
    }
.end annotation

.annotation build Lb0/c;
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0007\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u0018\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J \u0010\u000c\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\nH\u0016R\u0017\u0010\u0011\u001a\u00020\r8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010\u000e\u001a\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/qennnsad/aknkaksd/util/img/GlideConfiger;",
        "Lcom/bumptech/glide/module/a;",
        "Landroid/content/Context;",
        "context",
        "Lcom/bumptech/glide/d;",
        "builder",
        "",
        "a",
        "Lcom/bumptech/glide/c;",
        "glide",
        "Lcom/bumptech/glide/Registry;",
        "registry",
        "b",
        "",
        "F",
        "d",
        "()F",
        "BITMAP_POOL_TARGET_SCREENS",
        "<init>",
        "()V",
        "app_pron_playerRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field private final a:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/bumptech/glide/module/a;-><init>()V

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_0

    const/high16 v0, 0x40800000    # 4.0f

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    iput v0, p0, Lcom/qennnsad/aknkaksd/util/img/GlideConfiger;->a:F

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/bumptech/glide/d;)V
    .locals 4
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

    const-string v0, "builder"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/bumptech/glide/request/h;

    invoke-direct {v0}, Lcom/bumptech/glide/request/h;-><init>()V

    .line 2
    sget-object v1, Lcom/bumptech/glide/load/DecodeFormat;->PREFER_RGB_565:Lcom/bumptech/glide/load/DecodeFormat;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/a;->C(Lcom/bumptech/glide/load/DecodeFormat;)Lcom/bumptech/glide/request/a;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/request/h;

    .line 3
    invoke-virtual {v0}, Lcom/bumptech/glide/request/a;->q()Lcom/bumptech/glide/request/a;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/request/h;

    .line 4
    invoke-virtual {p2, v0}, Lcom/bumptech/glide/d;->h(Lcom/bumptech/glide/request/h;)Lcom/bumptech/glide/d;

    .line 5
    new-instance v0, Lcom/bumptech/glide/load/engine/cache/l$a;

    invoke-direct {v0, p1}, Lcom/bumptech/glide/load/engine/cache/l$a;-><init>(Landroid/content/Context;)V

    const/high16 v1, 0x40000000    # 2.0f

    .line 6
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/load/engine/cache/l$a;->g(F)Lcom/bumptech/glide/load/engine/cache/l$a;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/cache/l$a;->a()Lcom/bumptech/glide/load/engine/cache/l;

    move-result-object v0

    .line 8
    new-instance v1, Lcom/bumptech/glide/load/engine/cache/i;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/cache/l;->d()I

    move-result v0

    int-to-long v2, v0

    invoke-direct {v1, v2, v3}, Lcom/bumptech/glide/load/engine/cache/i;-><init>(J)V

    invoke-virtual {p2, v1}, Lcom/bumptech/glide/d;->r(Lcom/bumptech/glide/load/engine/cache/j;)Lcom/bumptech/glide/d;

    .line 9
    new-instance v0, Lcom/bumptech/glide/load/engine/cache/l$a;

    invoke-direct {v0, p1}, Lcom/bumptech/glide/load/engine/cache/l$a;-><init>(Landroid/content/Context;)V

    .line 10
    iget p1, p0, Lcom/qennnsad/aknkaksd/util/img/GlideConfiger;->a:F

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/engine/cache/l$a;->d(F)Lcom/bumptech/glide/load/engine/cache/l$a;

    move-result-object p1

    .line 11
    invoke-virtual {p1}, Lcom/bumptech/glide/load/engine/cache/l$a;->a()Lcom/bumptech/glide/load/engine/cache/l;

    move-result-object p1

    .line 12
    new-instance v0, Lcom/bumptech/glide/load/engine/bitmap_recycle/k;

    invoke-virtual {p1}, Lcom/bumptech/glide/load/engine/cache/l;->b()I

    move-result p1

    int-to-long v1, p1

    invoke-direct {v0, v1, v2}, Lcom/bumptech/glide/load/engine/bitmap_recycle/k;-><init>(J)V

    invoke-virtual {p2, v0}, Lcom/bumptech/glide/d;->e(Lcom/bumptech/glide/load/engine/bitmap_recycle/e;)Lcom/bumptech/glide/d;

    .line 13
    sget-object p1, Lcom/bumptech/glide/load/engine/executor/a$e;->d:Lcom/bumptech/glide/load/engine/executor/a$e;

    .line 14
    invoke-static {}, Lcom/bumptech/glide/load/engine/executor/a;->e()Lcom/bumptech/glide/load/engine/executor/a$b;

    move-result-object v0

    .line 15
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/engine/executor/a$b;->e(Lcom/bumptech/glide/load/engine/executor/a$e;)Lcom/bumptech/glide/load/engine/executor/a$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/executor/a$b;->a()Lcom/bumptech/glide/load/engine/executor/a;

    move-result-object v0

    .line 16
    invoke-virtual {p2, v0}, Lcom/bumptech/glide/d;->k(Lcom/bumptech/glide/load/engine/executor/a;)Lcom/bumptech/glide/d;

    .line 17
    invoke-static {}, Lcom/bumptech/glide/load/engine/executor/a;->i()Lcom/bumptech/glide/load/engine/executor/a$b;

    move-result-object v0

    .line 18
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/engine/executor/a$b;->e(Lcom/bumptech/glide/load/engine/executor/a$e;)Lcom/bumptech/glide/load/engine/executor/a$b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bumptech/glide/load/engine/executor/a$b;->a()Lcom/bumptech/glide/load/engine/executor/a;

    move-result-object p1

    .line 19
    invoke-virtual {p2, p1}, Lcom/bumptech/glide/d;->v(Lcom/bumptech/glide/load/engine/executor/a;)Lcom/bumptech/glide/d;

    return-void
.end method

.method public b(Landroid/content/Context;Lcom/bumptech/glide/c;Lcom/bumptech/glide/Registry;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/c;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Lcom/bumptech/glide/Registry;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "glide"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "registry"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    const-class p1, Lcom/bumptech/glide/load/model/g;

    const-class p2, Ljava/io/InputStream;

    .line 2
    new-instance v0, Lcom/bumptech/glide/integration/okhttp3/b$a;

    invoke-static {}, Lcom/qennnsad/aknkaksd/util/img/g;->b()Lokhttp3/OkHttpClient;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/bumptech/glide/integration/okhttp3/b$a;-><init>(Lokhttp3/Call$Factory;)V

    .line 3
    invoke-virtual {p3, p1, p2, v0}, Lcom/bumptech/glide/Registry;->y(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/o;)Lcom/bumptech/glide/Registry;

    return-void
.end method

.method public final d()F
    .locals 1

    iget v0, p0, Lcom/qennnsad/aknkaksd/util/img/GlideConfiger;->a:F

    return v0
.end method
