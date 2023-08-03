.class public Lcom/lljjcoder/style/citylist/sortlistview/PinyinComparator;
.super Ljava/lang/Object;
.source "PinyinComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/lljjcoder/style/citylist/sortlistview/SortModel;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/lljjcoder/style/citylist/sortlistview/SortModel;Lcom/lljjcoder/style/citylist/sortlistview/SortModel;)I
    .locals 3

    .line 2
    invoke-virtual {p1}, Lcom/lljjcoder/style/citylist/sortlistview/SortModel;->getSortLetters()Ljava/lang/String;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 3
    invoke-virtual {p2}, Lcom/lljjcoder/style/citylist/sortlistview/SortModel;->getSortLetters()Ljava/lang/String;

    move-result-object v0

    const-string v2, "#"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/lljjcoder/style/citylist/sortlistview/SortModel;->getSortLetters()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 5
    invoke-virtual {p2}, Lcom/lljjcoder/style/citylist/sortlistview/SortModel;->getSortLetters()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p1}, Lcom/lljjcoder/style/citylist/sortlistview/SortModel;->getSortLetters()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/lljjcoder/style/citylist/sortlistview/SortModel;->getSortLetters()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_3
    :goto_1
    const/4 p1, -0x1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/lljjcoder/style/citylist/sortlistview/SortModel;

    check-cast p2, Lcom/lljjcoder/style/citylist/sortlistview/SortModel;

    invoke-virtual {p0, p1, p2}, Lcom/lljjcoder/style/citylist/sortlistview/PinyinComparator;->compare(Lcom/lljjcoder/style/citylist/sortlistview/SortModel;Lcom/lljjcoder/style/citylist/sortlistview/SortModel;)I

    move-result p1

    return p1
.end method
