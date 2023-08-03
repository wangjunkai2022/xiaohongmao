.class public abstract Lorg/minidns/record/j;
.super Lorg/minidns/record/h;
.source "InternetAddressRR.java"


# instance fields
.field protected final c:[B

.field private d:Ljava/net/InetAddress;


# direct methods
.method protected constructor <init>([B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/minidns/record/h;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/minidns/record/j;->c:[B

    return-void
.end method


# virtual methods
.method public final c(Ljava/io/DataOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/minidns/record/j;->c:[B

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->write([B)V

    return-void
.end method

.method public final g()Ljava/net/InetAddress;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/minidns/record/j;->d:Ljava/net/InetAddress;

    if-nez v0, :cond_0

    .line 2
    :try_start_0
    iget-object v0, p0, Lorg/minidns/record/j;->c:[B

    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v0
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    iput-object v0, p0, Lorg/minidns/record/j;->d:Ljava/net/InetAddress;

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    :goto_0
    return-object v0
.end method

.method public final h()[B
    .locals 1

    iget-object v0, p0, Lorg/minidns/record/j;->c:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method
