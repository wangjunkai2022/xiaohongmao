.class public Lorg/minidns/dnslabel/DnsLabel$LabelToLongException;
.super Ljava/lang/IllegalArgumentException;
.source "DnsLabel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/minidns/dnslabel/DnsLabel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LabelToLongException"
.end annotation


# static fields
.field private static final a:J = 0x1L


# instance fields
.field public final label:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/minidns/dnslabel/DnsLabel$LabelToLongException;->label:Ljava/lang/String;

    return-void
.end method
