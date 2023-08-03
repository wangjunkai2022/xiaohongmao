.class public interface abstract Lc8/a;
.super Ljava/lang/Object;
.source "ILoader.java"


# virtual methods
.method public abstract b(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmaster/flame/danmaku/danmaku/loader/IllegalDataException;
        }
    .end annotation
.end method

.method public abstract c(Ljava/io/InputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmaster/flame/danmaku/danmaku/loader/IllegalDataException;
        }
    .end annotation
.end method

.method public abstract getDataSource()Lmaster/flame/danmaku/danmaku/parser/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lmaster/flame/danmaku/danmaku/parser/b<",
            "*>;"
        }
    .end annotation
.end method
