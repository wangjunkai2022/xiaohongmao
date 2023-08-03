.class public Lcom/koushikdutta/async/util/FileCache$Snapshot;
.super Ljava/lang/Object;
.source "FileCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/async/util/FileCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Snapshot"
.end annotation


# instance fields
.field a:[Ljava/io/FileInputStream;

.field b:[J


# direct methods
.method constructor <init>([Ljava/io/FileInputStream;[J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/koushikdutta/async/util/FileCache$Snapshot;->a:[Ljava/io/FileInputStream;

    .line 3
    iput-object p2, p0, Lcom/koushikdutta/async/util/FileCache$Snapshot;->b:[J

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/koushikdutta/async/util/FileCache$Snapshot;->a:[Ljava/io/FileInputStream;

    invoke-static {v0}, Lcom/koushikdutta/async/util/StreamUtility;->a([Ljava/io/Closeable;)V

    return-void
.end method

.method public b(I)J
    .locals 3

    iget-object v0, p0, Lcom/koushikdutta/async/util/FileCache$Snapshot;->b:[J

    aget-wide v1, v0, p1

    return-wide v1
.end method
