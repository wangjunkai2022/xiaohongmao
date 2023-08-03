.class public final Lcom/facebook/soloader/m;
.super Lcom/facebook/soloader/x;
.source "ExoSoSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/soloader/m$c;,
        Lcom/facebook/soloader/m$b;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/facebook/soloader/x;-><init>(Landroid/content/Context;Ljava/lang/String;)V

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

    new-instance v0, Lcom/facebook/soloader/m$b;

    invoke-direct {v0, p0, p0}, Lcom/facebook/soloader/m$b;-><init>(Lcom/facebook/soloader/m;Lcom/facebook/soloader/x;)V

    return-object v0
.end method
