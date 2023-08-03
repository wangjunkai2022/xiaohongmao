.class final Lorg/brotli/dec/o;
.super Ljava/lang/Object;
.source "WordTransformType.java"


# static fields
.field static final a:I = 0x0

.field static final b:I = 0x1

.field static final c:I = 0x2

.field static final d:I = 0x3

.field static final e:I = 0x4

.field static final f:I = 0x5

.field static final g:I = 0x6

.field static final h:I = 0x7

.field static final i:I = 0x8

.field static final j:I = 0x9

.field static final k:I = 0xa

.field static final l:I = 0xb

.field static final m:I = 0xc

.field static final n:I = 0xd

.field static final o:I = 0xe

.field static final p:I = 0xf

.field static final q:I = 0x10

.field static final r:I = 0x11

.field static final s:I = 0x12

.field static final t:I = 0x13

.field static final u:I = 0x14


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(I)I
    .locals 1

    const/16 v0, 0xc

    if-lt p0, v0, :cond_0

    sub-int/2addr p0, v0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static b(I)I
    .locals 1

    const/16 v0, 0x9

    if-gt p0, v0, :cond_0

    add-int/lit8 p0, p0, -0x1

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
