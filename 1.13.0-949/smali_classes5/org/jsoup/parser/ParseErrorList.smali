.class public Lorg/jsoup/parser/ParseErrorList;
.super Ljava/util/ArrayList;
.source "ParseErrorList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Lorg/jsoup/parser/d;",
        ">;"
    }
.end annotation


# static fields
.field private static final c:I = 0x10


# instance fields
.field private final a:I

.field private final b:I


# direct methods
.method constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2
    iput p1, p0, Lorg/jsoup/parser/ParseErrorList;->a:I

    .line 3
    iput p2, p0, Lorg/jsoup/parser/ParseErrorList;->b:I

    return-void
.end method

.method constructor <init>(Lorg/jsoup/parser/ParseErrorList;)V
    .locals 1

    .line 4
    iget v0, p1, Lorg/jsoup/parser/ParseErrorList;->a:I

    iget p1, p1, Lorg/jsoup/parser/ParseErrorList;->b:I

    invoke-direct {p0, v0, p1}, Lorg/jsoup/parser/ParseErrorList;-><init>(II)V

    return-void
.end method

.method public static noTracking()Lorg/jsoup/parser/ParseErrorList;
    .locals 2

    new-instance v0, Lorg/jsoup/parser/ParseErrorList;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lorg/jsoup/parser/ParseErrorList;-><init>(II)V

    return-object v0
.end method

.method public static tracking(I)Lorg/jsoup/parser/ParseErrorList;
    .locals 2

    new-instance v0, Lorg/jsoup/parser/ParseErrorList;

    const/16 v1, 0x10

    invoke-direct {v0, v1, p0}, Lorg/jsoup/parser/ParseErrorList;-><init>(II)V

    return-object v0
.end method


# virtual methods
.method a()Z
    .locals 2

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lorg/jsoup/parser/ParseErrorList;->b:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method b()I
    .locals 1

    iget v0, p0, Lorg/jsoup/parser/ParseErrorList;->b:I

    return v0
.end method
