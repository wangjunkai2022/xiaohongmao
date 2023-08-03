.class public abstract Lorg/minidns/dnsname/InvalidDnsNameException;
.super Ljava/lang/IllegalStateException;
.source "InvalidDnsNameException.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/minidns/dnsname/InvalidDnsNameException$DNSNameTooLongException;,
        Lorg/minidns/dnsname/InvalidDnsNameException$LabelTooLongException;
    }
.end annotation


# static fields
.field private static final b:J = 0x1L


# instance fields
.field protected final a:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/minidns/dnsname/InvalidDnsNameException;->a:Ljava/lang/String;

    return-void
.end method
