.class public Lcom/facebook/soloader/n;
.super Lcom/facebook/soloader/x;
.source "ExtractFromZipSoSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/soloader/n$b;,
        Lcom/facebook/soloader/n$c;
    }
.end annotation


# instance fields
.field protected final A:Ljava/lang/String;

.field protected final z:Ljava/io/File;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/facebook/soloader/x;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 2
    iput-object p3, p0, Lcom/facebook/soloader/n;->z:Ljava/io/File;

    .line 3
    iput-object p4, p0, Lcom/facebook/soloader/n;->A:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected r()Lcom/facebook/soloader/x$f;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/facebook/soloader/n$c;

    invoke-direct {v0, p0, p0}, Lcom/facebook/soloader/n$c;-><init>(Lcom/facebook/soloader/n;Lcom/facebook/soloader/x;)V

    return-object v0
.end method
