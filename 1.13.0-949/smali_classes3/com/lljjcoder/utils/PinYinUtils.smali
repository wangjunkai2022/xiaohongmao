.class public Lcom/lljjcoder/utils/PinYinUtils;
.super Ljava/lang/Object;
.source "PinYinUtils.java"


# instance fields
.field private format:Lnet/sourceforge/pinyin4j/format/HanyuPinyinOutputFormat;

.field private pinyin:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/lljjcoder/utils/PinYinUtils;->format:Lnet/sourceforge/pinyin4j/format/HanyuPinyinOutputFormat;

    .line 3
    new-instance v1, Lnet/sourceforge/pinyin4j/format/HanyuPinyinOutputFormat;

    invoke-direct {v1}, Lnet/sourceforge/pinyin4j/format/HanyuPinyinOutputFormat;-><init>()V

    iput-object v1, p0, Lcom/lljjcoder/utils/PinYinUtils;->format:Lnet/sourceforge/pinyin4j/format/HanyuPinyinOutputFormat;

    .line 4
    sget-object v2, Lnet/sourceforge/pinyin4j/format/HanyuPinyinToneType;->WITHOUT_TONE:Lnet/sourceforge/pinyin4j/format/HanyuPinyinToneType;

    invoke-virtual {v1, v2}, Lnet/sourceforge/pinyin4j/format/HanyuPinyinOutputFormat;->setToneType(Lnet/sourceforge/pinyin4j/format/HanyuPinyinToneType;)V

    .line 5
    iput-object v0, p0, Lcom/lljjcoder/utils/PinYinUtils;->pinyin:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCharPinYin(C)Ljava/lang/String;
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/lljjcoder/utils/PinYinUtils;->format:Lnet/sourceforge/pinyin4j/format/HanyuPinyinOutputFormat;

    invoke-static {p1, v0}, Lnet/sourceforge/pinyin4j/PinyinHelper;->toHanyuPinyinStringArray(CLnet/sourceforge/pinyin4j/format/HanyuPinyinOutputFormat;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/lljjcoder/utils/PinYinUtils;->pinyin:[Ljava/lang/String;
    :try_end_0
    .catch Lnet/sourceforge/pinyin4j/format/exception/BadHanyuPinyinOutputFormatCombination; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Lnet/sourceforge/pinyin4j/format/exception/BadHanyuPinyinOutputFormatCombination;->printStackTrace()V

    .line 3
    :goto_0
    iget-object p1, p0, Lcom/lljjcoder/utils/PinYinUtils;->pinyin:[Ljava/lang/String;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/4 v0, 0x0

    .line 4
    aget-object p1, p1, v0

    return-object p1
.end method

.method public getStringPinYin(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    .line 2
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 3
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v2}, Lcom/lljjcoder/utils/PinYinUtils;->getCharPinYin(C)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 4
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 5
    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
