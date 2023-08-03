.class final Lshaded/org/apache/commons/codec/language/f$a;
.super Ljava/lang/Object;
.source "DaitchMokotoffSoundex.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lshaded/org/apache/commons/codec/language/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lshaded/org/apache/commons/codec/language/f$c;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lshaded/org/apache/commons/codec/language/f$c;Lshaded/org/apache/commons/codec/language/f$c;)I
    .locals 0

    invoke-virtual {p2}, Lshaded/org/apache/commons/codec/language/f$c;->b()I

    move-result p2

    invoke-virtual {p1}, Lshaded/org/apache/commons/codec/language/f$c;->b()I

    move-result p1

    sub-int/2addr p2, p1

    return p2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lshaded/org/apache/commons/codec/language/f$c;

    check-cast p2, Lshaded/org/apache/commons/codec/language/f$c;

    invoke-virtual {p0, p1, p2}, Lshaded/org/apache/commons/codec/language/f$a;->a(Lshaded/org/apache/commons/codec/language/f$c;Lshaded/org/apache/commons/codec/language/f$c;)I

    move-result p1

    return p1
.end method
