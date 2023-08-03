.class public final Lu4/d;
.super Ljava/lang/Object;
.source "SVGAStructs.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0006\n\u0002\u0008\r\u0018\u00002\u00020\u0001B\'\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\u0006\u0010\t\u001a\u00020\u0002\u0012\u0006\u0010\u000b\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\r\u0010\u000eR\u0017\u0010\u0003\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006R\u0017\u0010\u0007\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010\u0004\u001a\u0004\u0008\u0008\u0010\u0006R\u0017\u0010\t\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\t\u0010\u0004\u001a\u0004\u0008\n\u0010\u0006R\u0017\u0010\u000b\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010\u0004\u001a\u0004\u0008\u000c\u0010\u0006\u00a8\u0006\u000f"
    }
    d2 = {
        "Lu4/d;",
        "",
        "",
        "x",
        "D",
        "c",
        "()D",
        "y",
        "d",
        "width",
        "b",
        "height",
        "a",
        "<init>",
        "(DDDD)V",
        "com.opensource.svgaplayer"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# instance fields
.field private final a:D

.field private final b:D

.field private final c:D

.field private final d:D


# direct methods
.method public constructor <init>(DDDD)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lu4/d;->a:D

    iput-wide p3, p0, Lu4/d;->b:D

    iput-wide p5, p0, Lu4/d;->c:D

    iput-wide p7, p0, Lu4/d;->d:D

    return-void
.end method


# virtual methods
.method public final a()D
    .locals 2

    iget-wide v0, p0, Lu4/d;->d:D

    return-wide v0
.end method

.method public final b()D
    .locals 2

    iget-wide v0, p0, Lu4/d;->c:D

    return-wide v0
.end method

.method public final c()D
    .locals 2

    iget-wide v0, p0, Lu4/d;->a:D

    return-wide v0
.end method

.method public final d()D
    .locals 2

    iget-wide v0, p0, Lu4/d;->b:D

    return-wide v0
.end method
