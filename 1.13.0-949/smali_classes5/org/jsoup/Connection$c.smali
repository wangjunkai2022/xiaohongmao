.class public interface abstract Lorg/jsoup/Connection$c;
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
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/jsoup/Connection$a<",
        "Lorg/jsoup/Connection$c;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract C()Z
.end method

.method public abstract J()Z
.end method

.method public abstract Q()Ljava/lang/String;
    .annotation runtime Lr7/h;
    .end annotation
.end method

.method public abstract R()I
.end method

.method public abstract U()Lorg/jsoup/parser/f;
.end method

.method public abstract a(Z)Lorg/jsoup/Connection$c;
.end method

.method public abstract b(Ljava/lang/String;)Lorg/jsoup/Connection$c;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
.end method

.method public abstract d(I)Lorg/jsoup/Connection$c;
.end method

.method public abstract data()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lorg/jsoup/Connection$b;",
            ">;"
        }
    .end annotation
.end method

.method public abstract g(Ljavax/net/ssl/SSLSocketFactory;)V
.end method

.method public abstract h(Ljava/lang/String;)Lorg/jsoup/Connection$c;
.end method

.method public abstract i(Ljava/net/Proxy;)Lorg/jsoup/Connection$c;
    .param p1    # Ljava/net/Proxy;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
.end method

.method public abstract j(Lorg/jsoup/parser/f;)Lorg/jsoup/Connection$c;
.end method

.method public abstract o(Ljava/lang/String;I)Lorg/jsoup/Connection$c;
.end method

.method public abstract p(I)Lorg/jsoup/Connection$c;
.end method

.method public abstract q(Z)Lorg/jsoup/Connection$c;
.end method

.method public abstract r(Z)Lorg/jsoup/Connection$c;
.end method

.method public abstract s()Z
.end method

.method public abstract t()Ljava/lang/String;
.end method

.method public abstract timeout()I
.end method

.method public abstract x()Ljavax/net/ssl/SSLSocketFactory;
    .annotation runtime Lr7/h;
    .end annotation
.end method

.method public abstract y()Ljava/net/Proxy;
    .annotation runtime Lr7/h;
    .end annotation
.end method

.method public abstract z(Lorg/jsoup/Connection$b;)Lorg/jsoup/Connection$c;
.end method
