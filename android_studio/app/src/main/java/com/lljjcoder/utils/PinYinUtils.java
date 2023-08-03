package com.lljjcoder.utils;

import net.sourceforge.pinyin4j.PinyinHelper;
import net.sourceforge.pinyin4j.format.HanyuPinyinOutputFormat;
import net.sourceforge.pinyin4j.format.HanyuPinyinToneType;
import net.sourceforge.pinyin4j.format.exception.BadHanyuPinyinOutputFormatCombination;

/* loaded from: classes3.dex */
public class PinYinUtils {
    private HanyuPinyinOutputFormat format;
    private String[] pinyin;

    public PinYinUtils() {
        this.format = null;
        HanyuPinyinOutputFormat hanyuPinyinOutputFormat = new HanyuPinyinOutputFormat();
        this.format = hanyuPinyinOutputFormat;
        hanyuPinyinOutputFormat.setToneType(HanyuPinyinToneType.WITHOUT_TONE);
        this.pinyin = null;
    }

    public String getCharPinYin(char c10) {
        try {
            this.pinyin = PinyinHelper.toHanyuPinyinStringArray(c10, this.format);
        } catch (BadHanyuPinyinOutputFormatCombination e4) {
            e4.printStackTrace();
        }
        String[] strArr = this.pinyin;
        if (strArr == null) {
            return null;
        }
        return strArr[0];
    }

    public String getStringPinYin(String str) {
        StringBuffer stringBuffer = new StringBuffer();
        for (int i4 = 0; i4 < str.length(); i4++) {
            String charPinYin = getCharPinYin(str.charAt(i4));
            if (charPinYin == null) {
                stringBuffer.append(str.charAt(i4));
            } else {
                stringBuffer.append(charPinYin);
            }
        }
        return stringBuffer.toString();
    }
}
