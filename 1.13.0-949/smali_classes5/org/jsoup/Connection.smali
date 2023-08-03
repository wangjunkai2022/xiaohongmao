.class public interface abstract Lorg/jsoup/Connection;
.super Ljava/lang/Object;
.source "Connection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jsoup/Connection$b;,
        Lorg/jsoup/Connection$d;,
        Lorg/jsoup/Connection$c;,
        Lorg/jsoup/Connection$a;,
        Lorg/jsoup/Connection$Method;
    }
.end annotation


# virtual methods
.method public abstract A()Ljava/net/CookieStore;
.end method

.method public abstract B(Ljava/lang/String;)Lorg/jsoup/Connection;
.end method

.method public abstract C(Ljava/util/Map;)Lorg/jsoup/Connection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/jsoup/Connection;"
        }
    .end annotation
.end method

.method public abstract D(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)Lorg/jsoup/Connection;
.end method

.method public abstract E(Lorg/jsoup/Connection$d;)Lorg/jsoup/Connection;
.end method

.method public varargs abstract F([Ljava/lang/String;)Lorg/jsoup/Connection;
.end method

.method public abstract G(Ljava/lang/String;)Lorg/jsoup/Connection$b;
    .annotation runtime Lr7/h;
    .end annotation
.end method

.method public abstract H(Ljava/util/Map;)Lorg/jsoup/Connection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/jsoup/Connection;"
        }
    .end annotation
.end method

.method public abstract a(Z)Lorg/jsoup/Connection;
.end method

.method public abstract b(Ljava/lang/String;)Lorg/jsoup/Connection;
.end method

.method public abstract c(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/Connection;
.end method

.method public abstract d(I)Lorg/jsoup/Connection;
.end method

.method public abstract e(Ljava/util/Collection;)Lorg/jsoup/Connection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/jsoup/Connection$b;",
            ">;)",
            "Lorg/jsoup/Connection;"
        }
    .end annotation
.end method

.method public abstract execute()Lorg/jsoup/Connection$d;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract f(Ljava/util/Map;)Lorg/jsoup/Connection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/jsoup/Connection;"
        }
    .end annotation
.end method

.method public abstract g(Ljavax/net/ssl/SSLSocketFactory;)Lorg/jsoup/Connection;
.end method

.method public abstract get()Lorg/jsoup/nodes/Document;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract h(Ljava/lang/String;)Lorg/jsoup/Connection;
.end method

.method public abstract i(Ljava/net/Proxy;)Lorg/jsoup/Connection;
    .param p1    # Ljava/net/Proxy;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
.end method

.method public abstract j(Lorg/jsoup/parser/f;)Lorg/jsoup/Connection;
.end method

.method public abstract k(Ljava/net/URL;)Lorg/jsoup/Connection;
.end method

.method public abstract l(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/Connection;
.end method

.method public abstract m(Lorg/jsoup/Connection$Method;)Lorg/jsoup/Connection;
.end method

.method public abstract n(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)Lorg/jsoup/Connection;
.end method

.method public abstract o(Ljava/lang/String;I)Lorg/jsoup/Connection;
.end method

.method public abstract p(I)Lorg/jsoup/Connection;
.end method

.method public abstract q(Z)Lorg/jsoup/Connection;
.end method

.method public abstract r(Z)Lorg/jsoup/Connection;
.end method

.method public abstract request()Lorg/jsoup/Connection$c;
.end method

.method public abstract s()Lorg/jsoup/Connection;
.end method

.method public abstract t(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/Connection;
.end method

.method public abstract u()Lorg/jsoup/nodes/Document;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract v(Ljava/lang/String;)Lorg/jsoup/Connection;
.end method

.method public abstract w(Lorg/jsoup/Connection$c;)Lorg/jsoup/Connection;
.end method

.method public abstract x(Ljava/lang/String;)Lorg/jsoup/Connection;
.end method

.method public abstract y()Lorg/jsoup/Connection$d;
.end method

.method public abstract z(Ljava/net/CookieStore;)Lorg/jsoup/Connection;
.end method
