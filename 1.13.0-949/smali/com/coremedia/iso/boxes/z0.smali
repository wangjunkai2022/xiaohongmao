.class public Lcom/coremedia/iso/boxes/z0;
.super Lcom/coremedia/iso/boxes/f;
.source "StaticChunkOffsetBox.java"


# static fields
.field public static final t:Ljava/lang/String; = "stco"

.field private static final synthetic u:Lorg/aspectj/lang/c$b;

.field private static final synthetic v:Lorg/aspectj/lang/c$b;


# instance fields
.field private s:[J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/coremedia/iso/boxes/z0;->s()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "stco"

    .line 1
    invoke-direct {p0, v0}, Lcom/coremedia/iso/boxes/f;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    new-array v0, v0, [J

    .line 2
    iput-object v0, p0, Lcom/coremedia/iso/boxes/z0;->s:[J

    return-void
.end method

.method private static synthetic s()V
    .locals 10

    new-instance v8, Lorg/aspectj/runtime/reflect/e;

    const-class v0, Lcom/coremedia/iso/boxes/z0;

    const-string v1, "StaticChunkOffsetBox.java"

    invoke-direct {v8, v1, v0}, Lorg/aspectj/runtime/reflect/e;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v1, "1"

    const-string v2, "getChunkOffsets"

    const-string v3, "com.coremedia.iso.boxes.StaticChunkOffsetBox"

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const-string v7, "[J"

    move-object v0, v8

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/e;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lk8/t;

    move-result-object v0

    const-string v9, "method-execution"

    const/16 v1, 0x27

    invoke-virtual {v8, v9, v0, v1}, Lorg/aspectj/runtime/reflect/e;->H(Ljava/lang/String;Lorg/aspectj/lang/e;I)Lorg/aspectj/lang/c$b;

    move-result-object v0

    sput-object v0, Lcom/coremedia/iso/boxes/z0;->u:Lorg/aspectj/lang/c$b;

    const-string v1, "1"

    const-string v2, "setChunkOffsets"

    const-string v3, "com.coremedia.iso.boxes.StaticChunkOffsetBox"

    const-string v4, "[J"

    const-string v5, "chunkOffsets"

    const-string v6, ""

    const-string v7, "void"

    move-object v0, v8

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/e;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lk8/t;

    move-result-object v0

    const/16 v1, 0x30

    invoke-virtual {v8, v9, v0, v1}, Lorg/aspectj/runtime/reflect/e;->H(Ljava/lang/String;Lorg/aspectj/lang/e;I)Lorg/aspectj/lang/c$b;

    move-result-object v0

    sput-object v0, Lcom/coremedia/iso/boxes/z0;->v:Lorg/aspectj/lang/c$b;

    return-void
.end method


# virtual methods
.method public b(Ljava/nio/ByteBuffer;)V
    .locals 5

    .line 1
    invoke-virtual {p0, p1}, Lcom/googlecode/mp4parser/c;->t(Ljava/nio/ByteBuffer;)J

    .line 2
    invoke-static {p1}, Lcom/coremedia/iso/g;->l(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/util/c;->a(J)I

    move-result v0

    .line 3
    new-array v1, v0, [J

    iput-object v1, p0, Lcom/coremedia/iso/boxes/z0;->s:[J

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object v2, p0, Lcom/coremedia/iso/boxes/z0;->s:[J

    invoke-static {p1}, Lcom/coremedia/iso/g;->l(Ljava/nio/ByteBuffer;)J

    move-result-wide v3

    aput-wide v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected c(Ljava/nio/ByteBuffer;)V
    .locals 5

    .line 1
    invoke-virtual {p0, p1}, Lcom/googlecode/mp4parser/c;->u(Ljava/nio/ByteBuffer;)V

    .line 2
    iget-object v0, p0, Lcom/coremedia/iso/boxes/z0;->s:[J

    array-length v0, v0

    int-to-long v0, v0

    invoke-static {p1, v0, v1}, Lcom/coremedia/iso/i;->i(Ljava/nio/ByteBuffer;J)V

    .line 3
    iget-object v0, p0, Lcom/coremedia/iso/boxes/z0;->s:[J

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v1, :cond_0

    return-void

    :cond_0
    aget-wide v3, v0, v2

    .line 4
    invoke-static {p1, v3, v4}, Lcom/coremedia/iso/i;->i(Ljava/nio/ByteBuffer;J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method protected e()J
    .locals 2

    iget-object v0, p0, Lcom/coremedia/iso/boxes/z0;->s:[J

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x8

    int-to-long v0, v0

    return-wide v0
.end method

.method public v()[J
    .locals 2

    sget-object v0, Lcom/coremedia/iso/boxes/z0;->u:Lorg/aspectj/lang/c$b;

    invoke-static {v0, p0, p0}, Lorg/aspectj/runtime/reflect/e;->v(Lorg/aspectj/lang/c$b;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/c;

    move-result-object v0

    invoke-static {}, Lcom/googlecode/mp4parser/j;->b()Lcom/googlecode/mp4parser/j;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/googlecode/mp4parser/j;->c(Lorg/aspectj/lang/c;)V

    iget-object v0, p0, Lcom/coremedia/iso/boxes/z0;->s:[J

    return-object v0
.end method

.method public w([J)V
    .locals 2

    sget-object v0, Lcom/coremedia/iso/boxes/z0;->v:Lorg/aspectj/lang/c$b;

    invoke-static {v0, p0, p0, p1}, Lorg/aspectj/runtime/reflect/e;->w(Lorg/aspectj/lang/c$b;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/c;

    move-result-object v0

    invoke-static {}, Lcom/googlecode/mp4parser/j;->b()Lcom/googlecode/mp4parser/j;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/googlecode/mp4parser/j;->c(Lorg/aspectj/lang/c;)V

    iput-object p1, p0, Lcom/coremedia/iso/boxes/z0;->s:[J

    return-void
.end method
