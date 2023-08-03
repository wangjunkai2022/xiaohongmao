.class public Lorg/minidns/hla/c;
.super Ljava/lang/Object;
.source "ResolverResult.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Lorg/minidns/record/h;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected final a:Lorg/minidns/dnsmessage/a;

.field private final b:Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;

.field private final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "TD;>;"
        }
    .end annotation
.end field

.field private final d:Z

.field protected final e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/minidns/dnssec/e;",
            ">;"
        }
    .end annotation
.end field

.field protected final f:Lorg/minidns/dnsmessage/DnsMessage;

.field private g:Lorg/minidns/hla/ResolutionUnsuccessfulException;

.field private h:Lorg/minidns/dnssec/DnssecResultNotAuthenticException;


# direct methods
.method constructor <init>(Lorg/minidns/dnsmessage/a;Lorg/minidns/dnsmessage/DnsMessage;Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/minidns/dnsmessage/a;",
            "Lorg/minidns/dnsmessage/DnsMessage;",
            "Ljava/util/Set<",
            "Lorg/minidns/dnssec/e;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/minidns/MiniDnsException$NullResultException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_2

    .line 2
    iput-object p1, p0, Lorg/minidns/hla/c;->a:Lorg/minidns/dnsmessage/a;

    .line 3
    iget-object v0, p2, Lorg/minidns/dnsmessage/DnsMessage;->c:Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;

    iput-object v0, p0, Lorg/minidns/hla/c;->b:Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;

    .line 4
    iput-object p2, p0, Lorg/minidns/hla/c;->f:Lorg/minidns/dnsmessage/DnsMessage;

    .line 5
    invoke-virtual {p2, p1}, Lorg/minidns/dnsmessage/DnsMessage;->j(Lorg/minidns/dnsmessage/a;)Ljava/util/Set;

    move-result-object p1

    if-nez p1, :cond_0

    .line 6
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lorg/minidns/hla/c;->c:Ljava/util/Set;

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lorg/minidns/hla/c;->c:Ljava/util/Set;

    :goto_0
    if-nez p3, :cond_1

    const/4 p1, 0x0

    .line 8
    iput-object p1, p0, Lorg/minidns/hla/c;->e:Ljava/util/Set;

    const/4 p1, 0x0

    .line 9
    iput-boolean p1, p0, Lorg/minidns/hla/c;->d:Z

    goto :goto_1

    .line 10
    :cond_1
    invoke-static {p3}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lorg/minidns/hla/c;->e:Ljava/util/Set;

    .line 11
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    iput-boolean p1, p0, Lorg/minidns/hla/c;->d:Z

    :goto_1
    return-void

    .line 12
    :cond_2
    new-instance p2, Lorg/minidns/MiniDnsException$NullResultException;

    invoke-virtual {p1}, Lorg/minidns/dnsmessage/a;->a()Lorg/minidns/dnsmessage/DnsMessage$b;

    move-result-object p1

    invoke-virtual {p1}, Lorg/minidns/dnsmessage/DnsMessage$b;->w()Lorg/minidns/dnsmessage/DnsMessage;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/minidns/MiniDnsException$NullResultException;-><init>(Lorg/minidns/dnsmessage/DnsMessage;)V

    throw p2
.end method


# virtual methods
.method public a()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TD;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/minidns/hla/c;->l()V

    .line 2
    iget-object v0, p0, Lorg/minidns/hla/c;->c:Ljava/util/Set;

    return-object v0
.end method

.method public b()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TD;>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/minidns/hla/c;->c:Ljava/util/Set;

    return-object v0
.end method

.method public c()Lorg/minidns/dnssec/DnssecResultNotAuthenticException;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/minidns/hla/c;->m()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    iget-boolean v0, p0, Lorg/minidns/hla/c;->d:Z

    if-eqz v0, :cond_1

    return-object v1

    .line 3
    :cond_1
    iget-object v0, p0, Lorg/minidns/hla/c;->h:Lorg/minidns/dnssec/DnssecResultNotAuthenticException;

    if-nez v0, :cond_2

    .line 4
    invoke-virtual {p0}, Lorg/minidns/hla/c;->h()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lorg/minidns/dnssec/DnssecResultNotAuthenticException;->from(Ljava/util/Set;)Lorg/minidns/dnssec/DnssecResultNotAuthenticException;

    move-result-object v0

    iput-object v0, p0, Lorg/minidns/hla/c;->h:Lorg/minidns/dnssec/DnssecResultNotAuthenticException;

    .line 5
    :cond_2
    iget-object v0, p0, Lorg/minidns/hla/c;->h:Lorg/minidns/dnssec/DnssecResultNotAuthenticException;

    return-object v0
.end method

.method public d()Lorg/minidns/dnsmessage/a;
    .locals 1

    iget-object v0, p0, Lorg/minidns/hla/c;->a:Lorg/minidns/dnsmessage/a;

    return-object v0
.end method

.method public e()Lorg/minidns/dnsmessage/DnsMessage;
    .locals 1

    iget-object v0, p0, Lorg/minidns/hla/c;->f:Lorg/minidns/dnsmessage/DnsMessage;

    return-object v0
.end method

.method public f()Lorg/minidns/hla/ResolutionUnsuccessfulException;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lorg/minidns/hla/c;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    iget-object v0, p0, Lorg/minidns/hla/c;->g:Lorg/minidns/hla/ResolutionUnsuccessfulException;

    if-nez v0, :cond_1

    .line 3
    new-instance v0, Lorg/minidns/hla/ResolutionUnsuccessfulException;

    iget-object v1, p0, Lorg/minidns/hla/c;->a:Lorg/minidns/dnsmessage/a;

    iget-object v2, p0, Lorg/minidns/hla/c;->b:Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;

    invoke-direct {v0, v1, v2}, Lorg/minidns/hla/ResolutionUnsuccessfulException;-><init>(Lorg/minidns/dnsmessage/a;Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;)V

    iput-object v0, p0, Lorg/minidns/hla/c;->g:Lorg/minidns/hla/ResolutionUnsuccessfulException;

    .line 4
    :cond_1
    iget-object v0, p0, Lorg/minidns/hla/c;->g:Lorg/minidns/hla/ResolutionUnsuccessfulException;

    return-object v0
.end method

.method public g()Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;
    .locals 1

    iget-object v0, p0, Lorg/minidns/hla/c;->b:Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;

    return-object v0
.end method

.method public h()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lorg/minidns/dnssec/e;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/minidns/hla/c;->l()V

    .line 2
    iget-object v0, p0, Lorg/minidns/hla/c;->e:Ljava/util/Set;

    return-object v0
.end method

.method i()Z
    .locals 1

    iget-object v0, p0, Lorg/minidns/hla/c;->e:Ljava/util/Set;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public j()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/minidns/hla/c;->l()V

    .line 2
    iget-boolean v0, p0, Lorg/minidns/hla/c;->d:Z

    return v0
.end method

.method public k()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/minidns/hla/ResolutionUnsuccessfulException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/minidns/hla/c;->f()Lorg/minidns/hla/ResolutionUnsuccessfulException;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    throw v0
.end method

.method protected l()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lorg/minidns/hla/c;->f()Lorg/minidns/hla/ResolutionUnsuccessfulException;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Can not perform operation because the DNS resolution was unsuccessful"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public m()Z
    .locals 2

    iget-object v0, p0, Lorg/minidns/hla/c;->b:Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;

    sget-object v1, Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;->NO_ERROR:Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, "Question: "

    .line 3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/minidns/hla/c;->a:Lorg/minidns/dnsmessage/a;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, "Response Code: "

    .line 4
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/minidns/hla/c;->b:Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 5
    iget-object v2, p0, Lorg/minidns/hla/c;->b:Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;

    sget-object v3, Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;->NO_ERROR:Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;

    if-ne v2, v3, :cond_2

    .line 6
    iget-boolean v2, p0, Lorg/minidns/hla/c;->d:Z

    if-eqz v2, :cond_0

    const-string v2, "Results verified via DNSSEC\n"

    .line 7
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    :cond_0
    invoke-virtual {p0}, Lorg/minidns/hla/c;->i()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 9
    iget-object v2, p0, Lorg/minidns/hla/c;->e:Ljava/util/Set;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 10
    :cond_1
    iget-object v1, p0, Lorg/minidns/hla/c;->f:Lorg/minidns/dnsmessage/DnsMessage;

    iget-object v1, v1, Lorg/minidns/dnsmessage/DnsMessage;->l:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
