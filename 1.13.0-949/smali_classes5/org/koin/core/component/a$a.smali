.class public final Lorg/koin/core/component/a$a;
.super Ljava/lang/Object;
.source "KoinComponent.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/koin/core/component/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static a(Lorg/koin/core/component/a;)Lorg/koin/core/Koin;
    .locals 0
    .param p0    # Lorg/koin/core/component/a;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    sget-object p0, Ld9/b;->a:Ld9/b;

    invoke-virtual {p0}, Ld9/b;->a()Lv8/d;

    move-result-object p0

    invoke-interface {p0}, Lv8/d;->get()Lorg/koin/core/Koin;

    move-result-object p0

    return-object p0
.end method
