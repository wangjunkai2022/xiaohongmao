.class public abstract Lorg/minidns/edns/a;
.super Ljava/lang/Object;
.source "EdnsOption.java"


# instance fields
.field public final a:I

.field public final b:I

.field protected final c:[B

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method protected constructor <init>(I[B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lorg/minidns/edns/a;->a:I

    .line 3
    array-length p1, p2

    iput p1, p0, Lorg/minidns/edns/a;->b:I

    .line 4
    iput-object p2, p0, Lorg/minidns/edns/a;->c:[B

    return-void
.end method

.method protected constructor <init>([B)V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    invoke-virtual {p0}, Lorg/minidns/edns/a;->c()Lorg/minidns/edns/Edns$OptionCode;

    move-result-object v0

    iget v0, v0, Lorg/minidns/edns/Edns$OptionCode;->asInt:I

    iput v0, p0, Lorg/minidns/edns/a;->a:I

    .line 7
    array-length v0, p1

    iput v0, p0, Lorg/minidns/edns/a;->b:I

    .line 8
    iput-object p1, p0, Lorg/minidns/edns/a;->c:[B

    return-void
.end method

.method public static d(I[B)Lorg/minidns/edns/a;
    .locals 2

    .line 1
    invoke-static {p0}, Lorg/minidns/edns/Edns$OptionCode;->from(I)Lorg/minidns/edns/Edns$OptionCode;

    move-result-object v0

    .line 2
    sget-object v1, Lorg/minidns/edns/a$a;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 3
    new-instance v0, Lorg/minidns/edns/c;

    invoke-direct {v0, p0, p1}, Lorg/minidns/edns/c;-><init>(I[B)V

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Lorg/minidns/edns/b;

    invoke-direct {v0, p1}, Lorg/minidns/edns/b;-><init>([B)V

    :goto_0
    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/minidns/edns/a;->e:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lorg/minidns/edns/a;->b()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/minidns/edns/a;->e:Ljava/lang/String;

    .line 3
    :cond_0
    iget-object v0, p0, Lorg/minidns/edns/a;->e:Ljava/lang/String;

    return-object v0
.end method

.method protected abstract b()Ljava/lang/CharSequence;
.end method

.method public abstract c()Lorg/minidns/edns/Edns$OptionCode;
.end method

.method protected abstract e()Ljava/lang/CharSequence;
.end method

.method public final f(Ljava/io/DataOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lorg/minidns/edns/a;->a:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 2
    iget v0, p0, Lorg/minidns/edns/a;->b:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 3
    iget-object v0, p0, Lorg/minidns/edns/a;->c:[B

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->write([B)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/minidns/edns/a;->d:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lorg/minidns/edns/a;->e()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/minidns/edns/a;->d:Ljava/lang/String;

    .line 3
    :cond_0
    iget-object v0, p0, Lorg/minidns/edns/a;->d:Ljava/lang/String;

    return-object v0
.end method
