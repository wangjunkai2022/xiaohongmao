.class final Lorg/brotli/dec/f;
.super Ljava/lang/Object;
.source "Dictionary.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/brotli/dec/f$d;,
        Lorg/brotli/dec/f$c;,
        Lorg/brotli/dec/f$b;,
        Lorg/brotli/dec/f$a;
    }
.end annotation


# static fields
.field static final a:[I

.field static final b:[I

.field static final c:I = 0x4

.field static final d:I = 0x18

.field static final e:I = 0x25


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x19

    new-array v1, v0, [I

    .line 1
    fill-array-data v1, :array_0

    sput-object v1, Lorg/brotli/dec/f;->a:[I

    new-array v0, v0, [I

    .line 2
    fill-array-data v0, :array_1

    sput-object v0, Lorg/brotli/dec/f;->b:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x1000
        0x2400
        0x5400
        0x8c00
        0xac00
        0xd000
        0xf800
        0x12400
        0x15400
        0x16e00
        0x18a00
        0x19900
        0x1a100
        0x1a980
        0x1bb80
        0x1c500
        0x1cf00
        0x1d440
        0x1d9c0
        0x1dca0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0xa
        0xa
        0xb
        0xb
        0xa
        0xa
        0xa
        0xa
        0xa
        0x9
        0x9
        0x8
        0x7
        0x7
        0x8
        0x7
        0x7
        0x6
        0x6
        0x5
        0x5
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a()[B
    .locals 1

    sget-object v0, Lorg/brotli/dec/f$d;->a:[B

    return-object v0
.end method
