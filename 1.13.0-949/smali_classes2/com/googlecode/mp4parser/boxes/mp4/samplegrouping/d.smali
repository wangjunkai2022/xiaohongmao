.class public Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/d;
.super Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/b;
.source "RollRecoveryEntry.java"


# static fields
.field public static final b:Ljava/lang/String; = "roll"


# instance fields
.field private a:S


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/nio/ByteBuffer;
    .locals 2

    const/4 v0, 0x2

    .line 1
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 2
    iget-short v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/d;->a:S

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 3
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    const-string v0, "roll"

    return-object v0
.end method

.method public c(Ljava/nio/ByteBuffer;)V
    .locals 0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result p1

    iput-short p1, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/d;->a:S

    return-void
.end method

.method public e()S
    .locals 1

    iget-short v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/d;->a:S

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    check-cast p1, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/d;

    .line 3
    iget-short v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/d;->a:S

    iget-short p1, p1, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/d;->a:S

    if-eq v2, p1, :cond_2

    return v1

    :cond_2
    return v0

    :cond_3
    :goto_0
    return v1
.end method

.method public f(S)V
    .locals 0

    iput-short p1, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/d;->a:S

    return-void
.end method

.method public hashCode()I
    .locals 1

    iget-short v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/d;->a:S

    return v0
.end method
