.class public final Lorg/koin/androidx/fragment/koin/a;
.super Ljava/lang/Object;
.source "KoinApplicationExt.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u001a\n\u0010\u0002\u001a\u00020\u0001*\u00020\u0000\u00a8\u0006\u0003"
    }
    d2 = {
        "Lorg/koin/core/a;",
        "",
        "a",
        "koin-android_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# static fields
.field private static final a:Lx8/a;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    sget-object v0, Lorg/koin/androidx/fragment/koin/a$a;->a:Lorg/koin/androidx/fragment/koin/a$a;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v1, v0, v2, v3}, Lb9/c;->c(ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lx8/a;

    move-result-object v0

    sput-object v0, Lorg/koin/androidx/fragment/koin/a;->a:Lx8/a;

    return-void
.end method

.method public static final a(Lorg/koin/core/a;)V
    .locals 4
    .param p0    # Lorg/koin/core/a;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/koin/core/a;->e()Lorg/koin/core/Koin;

    move-result-object p0

    sget-object v0, Lorg/koin/androidx/fragment/koin/a;->a:Lx8/a;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p0, v0, v1, v2, v3}, Lorg/koin/core/Koin;->P(Lorg/koin/core/Koin;Ljava/util/List;ZILjava/lang/Object;)V

    return-void
.end method
