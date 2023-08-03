.class Lorg/jsoup/safety/b$b;
.super Lorg/jsoup/safety/b$e;
.source "Safelist.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/safety/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/jsoup/safety/b$e;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method static a(Ljava/lang/String;)Lorg/jsoup/safety/b$b;
    .locals 1

    new-instance v0, Lorg/jsoup/safety/b$b;

    invoke-direct {v0, p0}, Lorg/jsoup/safety/b$b;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
