.class public Lcom/koushikdutta/async/http/filter/GZIPInputFilter;
.super Lcom/koushikdutta/async/http/filter/InflaterInputFilter;
.source "GZIPInputFilter.java"


# static fields
.field private static final l:I = 0x10

.field private static final m:I = 0x4

.field private static final n:I = 0x2

.field private static final o:I = 0x8


# instance fields
.field j:Z

.field protected k:Ljava/util/zip/CRC32;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/zip/Inflater;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/zip/Inflater;-><init>(Z)V

    invoke-direct {p0, v0}, Lcom/koushikdutta/async/http/filter/InflaterInputFilter;-><init>(Ljava/util/zip/Inflater;)V

    .line 2
    iput-boolean v1, p0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter;->j:Z

    .line 3
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter;->k:Ljava/util/zip/CRC32;

    return-void
.end method

.method static w0([BILjava/nio/ByteOrder;)S
    .locals 1

    .line 1
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne p2, v0, :cond_0

    .line 2
    aget-byte p2, p0, p1

    shl-int/lit8 p2, p2, 0x8

    add-int/lit8 p1, p1, 0x1

    aget-byte p0, p0, p1

    :goto_0
    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, p2

    int-to-short p0, p0

    return p0

    :cond_0
    add-int/lit8 p2, p1, 0x1

    .line 3
    aget-byte p2, p0, p2

    shl-int/lit8 p2, p2, 0x8

    aget-byte p0, p0, p1

    goto :goto_0
.end method

.method public static x0(B)I
    .locals 0

    and-int/lit16 p0, p0, 0xff

    return p0
.end method


# virtual methods
.method public s(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter;->j:Z

    if-eqz v0, :cond_0

    .line 2
    new-instance p2, Lcom/koushikdutta/async/PushParser;

    invoke-direct {p2, p1}, Lcom/koushikdutta/async/PushParser;-><init>(Lcom/koushikdutta/async/DataEmitter;)V

    const/16 v0, 0xa

    .line 3
    new-instance v1, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;-><init>(Lcom/koushikdutta/async/http/filter/GZIPInputFilter;Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/PushParser;)V

    invoke-virtual {p2, v0, v1}, Lcom/koushikdutta/async/PushParser;->f(ILcom/koushikdutta/async/PushParser$ParseCallback;)Lcom/koushikdutta/async/PushParser;

    goto :goto_0

    .line 4
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/koushikdutta/async/http/filter/InflaterInputFilter;->s(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)V

    :goto_0
    return-void
.end method
