.class public Lcom/facebook/cache/disk/d$b;
.super Ljava/lang/Object;
.source "DiskStorage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/cache/disk/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:F

.field public final e:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "id",
            "path",
            "type",
            "size",
            "firstBits"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/facebook/cache/disk/d$b;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/facebook/cache/disk/d$b;->b:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/facebook/cache/disk/d$b;->c:Ljava/lang/String;

    .line 5
    iput p4, p0, Lcom/facebook/cache/disk/d$b;->d:F

    .line 6
    iput-object p5, p0, Lcom/facebook/cache/disk/d$b;->e:Ljava/lang/String;

    return-void
.end method
