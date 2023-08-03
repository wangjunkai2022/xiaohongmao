.class Lorg/minidns/b$b;
.super Ljava/lang/Object;
.source "DnsClient.java"

# interfaces
.implements Lorg/minidns/util/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/minidns/b;->B(Lorg/minidns/dnsmessage/DnsMessage$b;)Lorg/minidns/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/minidns/util/e<",
        "Ljava/io/IOException;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Lorg/minidns/d$e;

.field final synthetic d:Lorg/minidns/b;


# direct methods
.method constructor <init>(Lorg/minidns/b;Ljava/util/List;Ljava/util/List;Lorg/minidns/d$e;)V
    .locals 0

    iput-object p1, p0, Lorg/minidns/b$b;->d:Lorg/minidns/b;

    iput-object p2, p0, Lorg/minidns/b$b;->a:Ljava/util/List;

    iput-object p3, p0, Lorg/minidns/b$b;->b:Ljava/util/List;

    iput-object p4, p0, Lorg/minidns/b$b;->c:Lorg/minidns/d$e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/io/IOException;

    invoke-virtual {p0, p1}, Lorg/minidns/b$b;->b(Ljava/io/IOException;)V

    return-void
.end method

.method public b(Ljava/io/IOException;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/minidns/b$b;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2
    iget-object p1, p0, Lorg/minidns/b$b;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget-object v0, p0, Lorg/minidns/b$b;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 3
    iget-object p1, p0, Lorg/minidns/b$b;->c:Lorg/minidns/d$e;

    iget-object v0, p0, Lorg/minidns/b$b;->a:Ljava/util/List;

    invoke-static {v0}, Lorg/minidns/util/MultipleIoException;->toIOException(Ljava/util/List;)Ljava/io/IOException;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/minidns/d$e;->j(Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method
