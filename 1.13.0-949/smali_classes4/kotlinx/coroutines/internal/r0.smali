.class public final Lkotlinx/coroutines/internal/r0;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "kotlinx/coroutines/internal/s0",
        "kotlinx/coroutines/internal/t0"
    }
    d2 = {}
    k = 0x4
    mv = {
        0x1,
        0x6,
        0x0
    }
.end annotation


# direct methods
.method public static final a()I
    .locals 1

    invoke-static {}, Lkotlinx/coroutines/internal/s0;->a()I

    move-result v0

    return v0
.end method

.method public static final b(Ljava/lang/String;III)I
    .locals 0
    .param p0    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param

    invoke-static {p0, p1, p2, p3}, Lkotlinx/coroutines/internal/t0;->a(Ljava/lang/String;III)I

    move-result p0

    return p0
.end method

.method public static final c(Ljava/lang/String;JJJ)J
    .locals 0
    .param p0    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param

    invoke-static/range {p0 .. p6}, Lkotlinx/coroutines/internal/t0;->b(Ljava/lang/String;JJJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final d(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/h;
    .end annotation

    invoke-static {p0}, Lkotlinx/coroutines/internal/s0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final e(Ljava/lang/String;Z)Z
    .locals 0
    .param p0    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param

    invoke-static {p0, p1}, Lkotlinx/coroutines/internal/t0;->c(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static synthetic f(Ljava/lang/String;IIIILjava/lang/Object;)I
    .locals 0

    invoke-static/range {p0 .. p5}, Lkotlinx/coroutines/internal/t0;->d(Ljava/lang/String;IIIILjava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static synthetic g(Ljava/lang/String;JJJILjava/lang/Object;)J
    .locals 0

    invoke-static/range {p0 .. p8}, Lkotlinx/coroutines/internal/t0;->e(Ljava/lang/String;JJJILjava/lang/Object;)J

    move-result-wide p0

    return-wide p0
.end method
