.class Lorg/minidns/b$a;
.super Ljava/lang/Object;
.source "DnsClient.java"

# interfaces
.implements Lorg/minidns/util/k;


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
        "Lorg/minidns/util/k<",
        "Lorg/minidns/dnsmessage/DnsMessage;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lorg/minidns/d$e;

.field final synthetic b:Lorg/minidns/b;


# direct methods
.method constructor <init>(Lorg/minidns/b;Lorg/minidns/d$e;)V
    .locals 0

    iput-object p1, p0, Lorg/minidns/b$a;->b:Lorg/minidns/b;

    iput-object p2, p0, Lorg/minidns/b$a;->a:Lorg/minidns/d$e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/minidns/dnsmessage/DnsMessage;)V
    .locals 1

    iget-object v0, p0, Lorg/minidns/b$a;->a:Lorg/minidns/d$e;

    invoke-virtual {v0, p1}, Lorg/minidns/d$e;->k(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lorg/minidns/dnsmessage/DnsMessage;

    invoke-virtual {p0, p1}, Lorg/minidns/b$a;->a(Lorg/minidns/dnsmessage/DnsMessage;)V

    return-void
.end method
