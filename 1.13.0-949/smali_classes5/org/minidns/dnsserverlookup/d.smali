.class public interface abstract Lorg/minidns/dnsserverlookup/d;
.super Ljava/lang/Object;
.source "DnsServerLookupMechanism.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lorg/minidns/dnsserverlookup/d;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract H()Z
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getPriority()I
.end method

.method public abstract j()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method
