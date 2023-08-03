.class public interface abstract Lorg/jsoup/Connection$d;
.super Ljava/lang/Object;
.source "Connection.java"

# interfaces
.implements Lorg/jsoup/Connection$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/Connection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/jsoup/Connection$a<",
        "Lorg/jsoup/Connection$d;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract D()Lorg/jsoup/nodes/Document;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract L(Ljava/lang/String;)Lorg/jsoup/Connection$d;
.end method

.method public abstract O()Lorg/jsoup/Connection$d;
.end method

.method public abstract P()I
.end method

.method public abstract S()Ljava/lang/String;
.end method

.method public abstract T()[B
.end method

.method public abstract body()Ljava/lang/String;
.end method

.method public abstract e()Ljava/lang/String;
    .annotation runtime Lr7/h;
    .end annotation
.end method

.method public abstract n()Ljava/lang/String;
    .annotation runtime Lr7/h;
    .end annotation
.end method

.method public abstract u()Ljava/io/BufferedInputStream;
.end method
